.class final Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/archi/nucleus/Nucleus;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
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
.method public constructor <init>(Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;",
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

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    iput-object p2, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->$reducer:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->$reducerHook:Lkotlin/jvm/functions/Function5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lkotlin/Pair<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    invoke-static {v0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->access$getActions$p(Lcom/sightcall/libraries/archi/nucleus/Nucleus;)Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object v0

    sget-object v1, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;

    iget-object v2, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->$reducer:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->$reducerHook:Lkotlin/jvm/functions/Function5;

    invoke-direct {p1, v2, v3, p0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$2;-><init>(Lkotlin/jvm/functions/Function3;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/jvm/functions/Function5;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/core/Observable;->scan(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1;->apply(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
