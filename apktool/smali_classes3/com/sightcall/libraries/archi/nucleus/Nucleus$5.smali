.class final Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


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
.field public static final INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus$5<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;

    invoke-direct {v0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;-><init>()V

    sput-object v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/sightcall/libraries/archi/nucleus/Command;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Lcom/sightcall/libraries/archi/nucleus/Command;

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/Nucleus$5;->test(Lcom/sightcall/libraries/archi/nucleus/Command;)Z

    move-result p0

    return p0
.end method
