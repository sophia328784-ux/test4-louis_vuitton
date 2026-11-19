.class public final Lcom/sightcall/libraries/rx/Optional;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/libraries/rx/Optional$Companion;,
        Lcom/sightcall/libraries/rx/Optional$IfNotPresent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 ,*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0002,-B\u0015\u0008\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\n\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000c\u001a\u000c0\rR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000fJ \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u000fJ&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0000\"\u0004\u0008\u0001\u0010\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u00140\u000fJ,\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0000\"\u0004\u0008\u0001\u0010\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00140\u00000\u000fJ\u0017\u0010\u0017\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0019J\r\u0010\u001b\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u000bJ\u001d\u0010\u001c\u001a\u0004\u0018\u00018\u00002\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001d\u00a2\u0006\u0002\u0010\u001eJ\u0019\u0010\u001f\u001a\u00028\u00002\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001d\u00a2\u0006\u0002\u0010\u001eJ(\u0010 \u001a\u0004\u0008\u00028\u0000\"\u0008\u0008\u0001\u0010!*\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H!0\u001d\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\n\u0010$\u001a\u00020%H\u0096\u0080\u0004J\u0010\u0010&\u001a\u0004\u0018\u00018\u0000H\u00c2\u0003\u00a2\u0006\u0002\u0010\u000bJ \u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u00c6\u0001\u00a2\u0006\u0002\u0010(J\u0014\u0010)\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u00d6\u0083\u0004J\n\u0010*\u001a\u00020+H\u00d6\u0081\u0004R\u0012\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006."
    }
    d2 = {
        "Lcom/sightcall/libraries/rx/Optional;",
        "T",
        "",
        "value",
        "<init>",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "isPresent",
        "",
        "()Z",
        "get",
        "()Ljava/lang/Object;",
        "ifPresent",
        "Lcom/sightcall/libraries/rx/Optional$IfNotPresent;",
        "consumer",
        "Lkotlin/Function1;",
        "",
        "filter",
        "predicate",
        "map",
        "U",
        "mapper",
        "flatMap",
        "orElseNullable",
        "other",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "orElse",
        "orNull",
        "orElseGetNullable",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "orElseGet",
        "orElseThrow",
        "X",
        "",
        "exceptionSupplier",
        "toString",
        "",
        "component1",
        "copy",
        "(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;",
        "equals",
        "hashCode",
        "",
        "Companion",
        "IfNotPresent",
        "rx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/libraries/rx/Optional$Companion;


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/libraries/rx/Optional$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/libraries/rx/Optional$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/libraries/rx/Optional;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/sightcall/libraries/rx/Optional;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getValue$p(Lcom/sightcall/libraries/rx/Optional;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private final component1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/sightcall/libraries/rx/Optional;Ljava/lang/Object;ILjava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/rx/Optional;->copy(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Lcom/sightcall/libraries/rx/Optional;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/rx/Optional;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/libraries/rx/Optional;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/libraries/rx/Optional;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final filter(Lkotlin/jvm/functions/Function1;)Lcom/sightcall/libraries/rx/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p1, p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->of(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->empty()Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->empty()Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final flatMap(Lkotlin/jvm/functions/Function1;)Lcom/sightcall/libraries/rx/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TU;>;>;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/rx/Optional;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->empty()Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "No value present"

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final ifPresent(Lkotlin/jvm/functions/Function1;)Lcom/sightcall/libraries/rx/Optional$IfNotPresent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TT;>.IfNotPresent;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Lcom/sightcall/libraries/rx/Optional$IfNotPresent;

    invoke-direct {p1, p0}, Lcom/sightcall/libraries/rx/Optional$IfNotPresent;-><init>(Lcom/sightcall/libraries/rx/Optional;)V

    return-object p1
.end method

.method public final isPresent()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final map(Lkotlin/jvm/functions/Function1;)Lcom/sightcall/libraries/rx/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TU;>;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->of(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->empty()Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final orElseGet(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final orElseGetNullable(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final orElseNullable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final orElseThrow(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TX;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public final orNull()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/libraries/rx/Optional;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Optional[%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Optional.empty"

    return-object p0
.end method
