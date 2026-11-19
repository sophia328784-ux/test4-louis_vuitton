.class public final Lkotlin/reflect/jvm/internal/types/CapturedKType;
.super Lkotlin/reflect/jvm/internal/types/AbstractKType;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/CapturedKType;",
        "Lkotlin/reflect/jvm/internal/types/AbstractKType;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;",
        "Lkotlin/reflect/KType;",
        "lowerType",
        "Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;",
        "typeConstructor",
        "",
        "isMarkedNullable",
        "<init>",
        "(Lkotlin/reflect/KType;Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;Z)V",
        "kotlin-reflection"
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
.field public final c:Lkotlin/reflect/KType;

.field public final d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

.field public final e:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;Z)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/types/CapturedKType$1;->b:Lkotlin/reflect/jvm/internal/types/CapturedKType$1;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->c:Lkotlin/reflect/KType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->e:Z

    return-void
.end method


# virtual methods
.method public final A()Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final D(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string p1, "Definitely not null captured type is not supported yet: "

    invoke-static {p0, p1}, Ld20;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->e:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/types/CapturedKType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->c:Lkotlin/reflect/KType;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    invoke-direct {v0, v1, p0, p1}, Lkotlin/reflect/jvm/internal/types/CapturedKType;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;Z)V

    return-object v0
.end method

.method public final H()Lkotlin/reflect/jvm/internal/types/AbstractKType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Lkotlin/reflect/KClassifier;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->e:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/types/CapturedKType;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/types/CapturedKType;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/types/CapturedKType;->c:Lkotlin/reflect/KType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->c:Lkotlin/reflect/KType;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/types/CapturedKType;->d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->e:Z

    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/types/CapturedKType;->e:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lkotlin/reflect/KType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final h()Lkotlin/reflect/KClass;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->c:Lkotlin/reflect/KType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/CapturedKType;->d:Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/CapturedKTypeConstructor;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
