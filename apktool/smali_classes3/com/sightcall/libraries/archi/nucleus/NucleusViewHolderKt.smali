.class public final Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a;\u0010\u0008\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005j\u0002`\t2\u001e\u0010\n\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u000b\"\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u000c*(\u0010\u0000\u001a\u0004\u0008\u0000\u0010\u0001\"\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002*\"\u0010\u0004\"\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Renderer",
        "S",
        "Lkotlin/Function1;",
        "",
        "Dispatcher",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "dispatch",
        "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;",
        "observables",
        "",
        "([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;",
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
.method public static final varargs dispatch([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;)",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
