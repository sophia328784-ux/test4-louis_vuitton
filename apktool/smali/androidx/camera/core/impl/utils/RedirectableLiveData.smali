.class public final Landroidx/camera/core/impl/utils/RedirectableLiveData;
.super Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/camera/core/impl/utils/MappingRedirectableLiveData<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/camera/core/impl/utils/RedirectableLiveData;",
        "T",
        "Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;",
        "initialValue",
        "<init>",
        "(Ljava/lang/Object;)V",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lno0;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lno0;-><init>(I)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;-><init>(Ljava/lang/Object;Landroidx/arch/core/util/Function;)V

    iput-object p1, p0, Landroidx/camera/core/impl/utils/RedirectableLiveData;->e:Ljava/lang/Object;

    return-void
.end method
