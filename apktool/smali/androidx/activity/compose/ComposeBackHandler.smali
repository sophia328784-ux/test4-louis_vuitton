.class final Landroidx/activity/compose/ComposeBackHandler;
.super Landroidx/activity/compose/internal/BackHandlerCompat;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/activity/compose/ComposeBackHandler;",
        "Landroidx/activity/compose/internal/BackHandlerCompat;",
        "Landroidx/activity/compose/BackHandlerInfo;",
        "info",
        "<init>",
        "(Landroidx/activity/compose/BackHandlerInfo;)V",
        "activity-compose"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/BackHandlerInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V

    new-instance p1, Loo;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Loo;-><init>(I)V

    iput-object p1, p0, Landroidx/activity/compose/ComposeBackHandler;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ComposeBackHandler;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
