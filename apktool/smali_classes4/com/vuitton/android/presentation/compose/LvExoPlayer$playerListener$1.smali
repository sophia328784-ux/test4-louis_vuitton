.class public final Lcom/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1",
        "Landroidx/media3/common/Player$Listener;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/compose/LvExoPlayer;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1;->b:Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    return-void
.end method


# virtual methods
.method public final h0(F)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1;->b:Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->c:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final x0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1;->b:Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
