.class public Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineMediaBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/offline/OfflineMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfflineMediaBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineMediaBinder;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sightcall/universal/media/offline/OfflineMediaService;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineMediaBinder;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    return-object p0
.end method
