.class final Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder$startInteractions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->startInteractions(Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
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
.field final synthetic this$0:Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder<",
            "TV;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder<",
            "TV;TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder$startInteractions$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder$startInteractions$1;->this$0:Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->getRender()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
