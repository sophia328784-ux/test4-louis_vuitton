.class final Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;
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


# static fields
.field public static final INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus$4<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;

    invoke-direct {v0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;-><init>()V

    sput-object v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Pair;)Lcom/sightcall/libraries/archi/nucleus/Command;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/Command;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/Command;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$4;->apply(Lkotlin/Pair;)Lcom/sightcall/libraries/archi/nucleus/Command;

    move-result-object p0

    return-object p0
.end method
