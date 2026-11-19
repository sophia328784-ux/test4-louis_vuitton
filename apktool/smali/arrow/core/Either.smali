.class public abstract Larrow/core/Either;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larrow/Kind;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larrow/core/Either$Left;,
        Larrow/core/Either$Right;,
        Larrow/core/Either$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Larrow/Kind<",
        "Larrow/Kind<",
        "Ljava/lang/Object;",
        "+TA;>;TB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u00012*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0004\u0012\u00028\u00010\u0003j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001`\u0005:\u0003\u0006\u0007\u0008\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Larrow/core/Either;",
        "A",
        "B",
        "Larrow/Kind;",
        "",
        "Larrow/core/EitherOf;",
        "Companion",
        "Left",
        "Right",
        "Larrow/core/Either$Left;",
        "Larrow/core/Either$Right;",
        "arrow-core-data"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Larrow/core/Either$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Larrow/core/Either$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Larrow/core/Either$Right;

    const/16 v1, 0x29

    if-eqz v0, :cond_0

    check-cast p0, Larrow/core/Either$Right;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Either.Right("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Larrow/core/Either$Right;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Larrow/core/Either$Left;

    if-eqz v0, :cond_1

    check-cast p0, Larrow/core/Either$Left;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Either.Left("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Larrow/core/Either$Left;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
