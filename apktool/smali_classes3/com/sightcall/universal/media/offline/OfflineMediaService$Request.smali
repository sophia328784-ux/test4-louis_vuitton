.class Lcom/sightcall/universal/media/offline/OfflineMediaService$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/offline/OfflineMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Request"
.end annotation


# instance fields
.field file:Lokhttp3/MultipartBody$Part;

.field name:Lokhttp3/MultipartBody$Part;

.field final synthetic this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService$Request;->this$0:Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
