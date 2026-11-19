.class final Lio/reactivex/rxjava3/internal/functions/Functions$Array6Func;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Array6Func"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "[",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lio/reactivex/rxjava3/functions/Function6;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/functions/Function6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$Array6Func;->b:Lio/reactivex/rxjava3/functions/Function6;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v0, 0x3

    aget-object v0, p1, v0

    const/4 v0, 0x4

    aget-object v0, p1, v0

    const/4 v0, 0x5

    aget-object p1, p1, v0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$Array6Func;->b:Lio/reactivex/rxjava3/functions/Function6;

    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Function6;->apply()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Array of size 6 expected but got "

    array-length p1, p1

    invoke-static {p1, p0}, Lmd;->g(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
