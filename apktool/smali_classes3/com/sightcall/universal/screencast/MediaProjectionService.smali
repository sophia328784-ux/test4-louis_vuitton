.class public final Lcom/sightcall/universal/screencast/MediaProjectionService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016R\u0012\u0010\u0004\u001a\u00060\u0005R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sightcall/universal/screencast/MediaProjectionService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "binder",
        "Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "LocalBinder",
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
.field private final binder:Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;-><init>(Lcom/sightcall/universal/screencast/MediaProjectionService;)V

    iput-object v0, p0, Lcom/sightcall/universal/screencast/MediaProjectionService;->binder:Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/screencast/MediaProjectionService;->binder:Lcom/sightcall/universal/screencast/MediaProjectionService$LocalBinder;

    return-object p0
.end method
