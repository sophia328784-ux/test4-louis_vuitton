.class public final Lcom/sightcall/libraries/archi/nucleus/CommandsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u001a\u001a\u0010\u0007\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0008*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00080\t\u00a8\u0006\n"
    }
    d2 = {
        "simpleCommand",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "nextAction",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "function",
        "Lkotlin/Function0;",
        "",
        "asCommand",
        "A",
        "Lio/reactivex/rxjava3/core/Single;",
        "archi_release"
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
.method public static final asCommand(Lio/reactivex/rxjava3/core/Single;)Lcom/sightcall/libraries/archi/nucleus/Command;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lio/reactivex/rxjava3/core/Single<",
            "TA;>;)",
            "Lcom/sightcall/libraries/archi/nucleus/Command;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$asCommand$1;

    invoke-direct {v0, p0}, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$asCommand$1;-><init>(Lio/reactivex/rxjava3/core/Single;)V

    return-object v0
.end method

.method public static final simpleCommand(Lcom/sightcall/libraries/archi/nucleus/Action;Lkotlin/jvm/functions/Function0;)Lcom/sightcall/libraries/archi/nucleus/Command;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/Command;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;

    invoke-direct {v0, p1, p0}, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/sightcall/libraries/archi/nucleus/Action;)V

    return-object v0
.end method

.method public static synthetic simpleCommand$default(Lcom/sightcall/libraries/archi/nucleus/Action;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/sightcall/libraries/archi/nucleus/Command;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lcom/sightcall/libraries/archi/nucleus/DoNothing;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/DoNothing;

    :cond_0
    invoke-static {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/CommandsKt;->simpleCommand(Lcom/sightcall/libraries/archi/nucleus/Action;Lkotlin/jvm/functions/Function0;)Lcom/sightcall/libraries/archi/nucleus/Command;

    move-result-object p0

    return-object p0
.end method
