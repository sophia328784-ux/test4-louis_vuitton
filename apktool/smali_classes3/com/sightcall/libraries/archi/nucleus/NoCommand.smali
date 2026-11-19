.class public final Lcom/sightcall/libraries/archi/nucleus/NoCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/nucleus/NoCommand;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "<init>",
        "()V",
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


# static fields
.field public static final INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    invoke-direct {v0}, Lcom/sightcall/libraries/archi/nucleus/NoCommand;-><init>()V

    sput-object v0, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lio/reactivex/rxjava3/core/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    sget-object p0, Lio/reactivex/rxjava3/internal/operators/single/SingleNever;->b:Lio/reactivex/rxjava3/internal/operators/single/SingleNever;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
