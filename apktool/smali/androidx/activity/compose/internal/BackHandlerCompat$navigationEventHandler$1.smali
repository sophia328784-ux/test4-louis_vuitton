.class public final Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigationevent/NavigationEventHandler<",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "androidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1",
        "Landroidx/navigationevent/NavigationEventHandler;",
        "Landroidx/navigationevent/NavigationEventInfo;",
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
.field public final synthetic h:Landroidx/activity/compose/internal/BackHandlerCompat;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/internal/BackHandlerCompat;Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->h:Landroidx/activity/compose/internal/BackHandlerCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->h:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->b()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->h:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->c()V

    return-void
.end method

.method public final e(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->h:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0, v0}, Landroidx/activity/compose/internal/BackHandlerCompat;->d(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public final f(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->h:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->e()V

    return-void
.end method
