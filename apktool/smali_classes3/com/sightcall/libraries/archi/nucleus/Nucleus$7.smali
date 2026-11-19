.class final synthetic Lcom/sightcall/libraries/archi/nucleus/Nucleus$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/archi/nucleus/Nucleus;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
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
.field final synthetic $tmp0:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$7;->$tmp0:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/sightcall/libraries/archi/nucleus/Action;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$7;->$tmp0:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/sightcall/libraries/archi/nucleus/Action;

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$7;->accept(Lcom/sightcall/libraries/archi/nucleus/Action;)V

    return-void
.end method
