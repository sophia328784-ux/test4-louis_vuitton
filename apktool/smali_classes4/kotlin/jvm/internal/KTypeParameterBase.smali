.class public abstract Lkotlin/jvm/internal/KTypeParameterBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KTypeParameter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/jvm/internal/KTypeParameterBase;",
        "Lkotlin/reflect/KTypeParameter;",
        "",
        "Lkotlin/jvm/internal/TypeParameterContainer;",
        "container",
        "<init>",
        "(Ljava/lang/Object;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/KTypeParameterBase;->b:Ljava/lang/Object;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lss;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/KTypeParameterBase;->c:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/jvm/internal/KTypeParameterBase;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/TypeParameterReference;

    check-cast p1, Lkotlin/jvm/internal/KTypeParameterBase;

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/internal/TypeParameterReference;

    iget-object v1, v1, Lkotlin/jvm/internal/TypeParameterReference;->d:Ljava/lang/String;

    iget-object v0, v0, Lkotlin/jvm/internal/TypeParameterReference;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlin/jvm/internal/KTypeParameterBase;->b:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/jvm/internal/KTypeParameterBase;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/KTypeParameterBase;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    check-cast p0, Lkotlin/jvm/internal/TypeParameterReference;

    iget-object p0, p0, Lkotlin/jvm/internal/TypeParameterReference;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/TypeParameterReference;->g:Lkotlin/jvm/internal/TypeParameterReference$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/jvm/internal/TypeParameterReference$Companion;->a(Lkotlin/reflect/KTypeParameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
