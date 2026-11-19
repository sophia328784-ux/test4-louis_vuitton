.class public final Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
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

.method public static a(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;Ljava/util/Set;)Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;
    .locals 5

    iget v0, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;->a:I

    iget p0, p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;->b:I

    const-string v1, "\n                            Invalid dimensionConstraints: the constraints must contain width, height or both.\n                            It cannot be empty: ("

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Height:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    sget-object v3, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Width:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    filled-new-array {v2, v3}, [Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lkotlin/collections/SetsKt;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/SetsKt;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, p0

    :goto_0
    invoke-static {}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;->a()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;->b()I

    move-result v2

    if-lt v2, v0, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;

    if-nez v1, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;->Ultra:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    invoke-direct {p0, v1, p1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;Ljava/util/Set;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")\n                            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_9

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                    Invalid dimensionConstraints: the constraints must contain width, height or both.\n                    It cannot be empty: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")\n                    "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v2, "UrlFactory"

    invoke-virtual {v1, v2, p1, v0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    new-instance p1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    sget-object v0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;->Large:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;

    sget-object v1, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;->Width:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;

    invoke-static {v1}, Lkotlin/collections/SetsKt;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;-><init>(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;Ljava/util/Set;)V

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_8

    move-object p0, p1

    :cond_8
    check-cast p0, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;

    return-object p0

    :cond_9
    throw p0
.end method
