.class public final Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->bindService(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "sdk_installedRelease"
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
.field final synthetic $onServiceReady:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/app/Service;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Service;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->this$0:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    iput-object p2, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->$onServiceReady:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->this$0:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;

    invoke-virtual {p2}, Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;->getService()Lcom/sightcall/universal/screencast/MediaProjectionService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->access$setServiceInstance$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Lcom/sightcall/universal/screencast/MediaProjectionService;)V

    iget-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->$onServiceReady:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2}, Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;->getService()Lcom/sightcall/universal/screencast/MediaProjectionService;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->this$0:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->access$setServiceBound$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    iget-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->this$0:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->access$setServiceBound$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Z)V

    iget-object p0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;->this$0:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->access$setConnectionService$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Landroid/content/ServiceConnection;)V

    return-void
.end method
