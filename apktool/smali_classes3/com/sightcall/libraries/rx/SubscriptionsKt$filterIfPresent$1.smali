.class public final Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/libraries/rx/SubscriptionsKt;->filterIfPresent(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;
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
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;

    invoke-direct {v0}, Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;-><init>()V

    sput-object v0, Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;->INSTANCE:Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/sightcall/libraries/rx/Optional;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/rx/Optional<",
            "+TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/libraries/rx/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/sightcall/libraries/rx/Optional;

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/rx/SubscriptionsKt$filterIfPresent$1;->test(Lcom/sightcall/libraries/rx/Optional;)Z

    move-result p0

    return p0
.end method
