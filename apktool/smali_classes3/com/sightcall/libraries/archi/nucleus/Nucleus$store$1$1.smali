.class final Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
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
.field public static final INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;

    invoke-direct {v0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;-><init>()V

    sput-object v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/sightcall/libraries/archi/nucleus/Action;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/sightcall/libraries/archi/nucleus/DoNothing;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/sightcall/libraries/archi/nucleus/Action;

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$store$1$1;->test(Lcom/sightcall/libraries/archi/nucleus/Action;)Z

    move-result p0

    return p0
.end method
