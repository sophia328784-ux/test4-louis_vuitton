.class public interface abstract Landroidx/work/impl/WorkLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/work/impl/WorkLauncher;",
        "",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
.end method

.method public b(Landroidx/work/impl/StartStopToken;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/work/impl/WorkLauncher;->d(Landroidx/work/impl/StartStopToken;I)V

    return-void
.end method

.method public c(Landroidx/work/impl/StartStopToken;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroidx/work/impl/WorkLauncher;->a(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V

    return-void
.end method

.method public abstract d(Landroidx/work/impl/StartStopToken;I)V
.end method

.method public e(Landroidx/work/impl/StartStopToken;)V
    .locals 1

    const/16 v0, -0x200

    invoke-interface {p0, p1, v0}, Landroidx/work/impl/WorkLauncher;->d(Landroidx/work/impl/StartStopToken;I)V

    return-void
.end method
