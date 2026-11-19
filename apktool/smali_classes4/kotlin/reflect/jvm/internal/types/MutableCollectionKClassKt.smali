.class public abstract Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001c\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0001\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "T",
        "Lkotlin/reflect/KClass;",
        "mutableClassOf",
        "()Lkotlin/reflect/KClass;",
        "kotlin-reflection"
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
.method public static final a(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->a:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->a:Ljava/lang/String;

    new-instance v2, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$0;

    invoke-direct {v2, p1, p0}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$0;-><init>(Lkotlin/reflect/KClass;Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;

    invoke-direct {v3, p0, p1}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;-><init>(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
