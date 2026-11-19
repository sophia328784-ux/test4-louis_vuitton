.class final Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->apply(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/BiFunction;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $reducer:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "Lkotlin/Pair<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $reducerHook:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sightcall/libraries/archi/nucleus/Nucleus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;-",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;-",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "+",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function5<",
            "-TS;-",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "-",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "-TS;-",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->$reducer:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->this$0:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    iput-object p3, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->$reducerHook:Lkotlin/jvm/functions/Function5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lcom/sightcall/libraries/archi/nucleus/Action;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->apply(Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ")",
            "Lkotlin/Pair<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/sightcall/libraries/archi/nucleus/Command;

    iget-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->$reducer:Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->this$0:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0, v3, p2}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;->$reducerHook:Lkotlin/jvm/functions/Function5;

    check-cast p1, Lkotlin/Pair;

    iget-object v4, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcom/sightcall/libraries/archi/nucleus/Command;

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
