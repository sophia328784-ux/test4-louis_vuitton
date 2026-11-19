.class public final Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/archi/nucleus/CommandsKt;->simpleCommand(Lcom/sightcall/libraries/archi/nucleus/Action;Lkotlin/jvm/functions/Function0;)Lcom/sightcall/libraries/archi/nucleus/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "execute",
        "Lio/reactivex/rxjava3/core/Single;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "archi_release"
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
.field final synthetic $function:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $nextAction:Lcom/sightcall/libraries/archi/nucleus/Action;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/sightcall/libraries/archi/nucleus/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;->$function:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;->$nextAction:Lcom/sightcall/libraries/archi/nucleus/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Lcom/sightcall/libraries/archi/nucleus/Action;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;->execute$lambda$0(Lkotlin/jvm/functions/Function0;Lcom/sightcall/libraries/archi/nucleus/Action;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0
.end method

.method private static final execute$lambda$0(Lkotlin/jvm/functions/Function0;Lcom/sightcall/libraries/archi/nucleus/Action;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public execute()Lio/reactivex/rxjava3/core/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;->$function:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;->$nextAction:Lcom/sightcall/libraries/archi/nucleus/Action;

    new-instance v1, Lo7;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;

    invoke-direct {p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method
