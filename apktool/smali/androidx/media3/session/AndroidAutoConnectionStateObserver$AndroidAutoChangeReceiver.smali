.class final Landroidx/media3/session/AndroidAutoConnectionStateObserver$AndroidAutoChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/AndroidAutoConnectionStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AndroidAutoChangeReceiver"
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Landroidx/media3/session/AndroidAutoConnectionStateObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/session/AndroidAutoConnectionStateObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/AndroidAutoConnectionStateObserver$AndroidAutoChangeReceiver;->a:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/AndroidAutoConnectionStateObserver$AndroidAutoChangeReceiver;->a:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    iget-object p1, p0, Landroidx/media3/session/AndroidAutoConnectionStateObserver;->c:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/media3/session/a;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/media3/session/a;-><init>(Landroidx/media3/session/AndroidAutoConnectionStateObserver;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
