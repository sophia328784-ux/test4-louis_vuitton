.class final Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/spatial/ExecuteDelayed;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;",
        "Landroidx/compose/ui/spatial/ExecuteDelayed;",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;->b:Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;

    return-void
.end method


# virtual methods
.method public final H(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lr3;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lr3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    sget-object p3, Landroidx/compose/ui/Actual_androidKt;->a:Landroid/os/Handler;

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Landroidx/compose/ui/Actual_androidKt;->a:Landroid/os/Handler;

    instance-of p0, p1, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Landroidx/compose/ui/Actual_androidKt;->a:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
