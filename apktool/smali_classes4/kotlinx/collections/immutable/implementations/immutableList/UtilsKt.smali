.class public abstract Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-collections-immutable"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;
    .locals 1

    sget-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->d:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->e:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    return-object v0
.end method
