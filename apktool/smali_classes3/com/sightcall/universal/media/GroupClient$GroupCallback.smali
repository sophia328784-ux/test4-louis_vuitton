.class abstract Lcom/sightcall/universal/media/GroupClient$GroupCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/GroupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupCallback"
.end annotation


# instance fields
.field private final metadata:Lcom/sightcall/universal/media/Metadata;

.field private final random:Ljava/util/Random;

.field private final request:Lcom/sightcall/universal/media/PictureGroupV3Request;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->random:Ljava/util/Random;

    iput-object p1, p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    iput-object p2, p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->request:Lcom/sightcall/universal/media/PictureGroupV3Request;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/media/GroupClient$GroupCallback;Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->lambda$replayRequest$0(Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V

    return-void
.end method

.method private synthetic lambda$replayRequest$0(Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->metadata:Lcom/sightcall/universal/media/Metadata;

    iget-object p0, p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->request:Lcom/sightcall/universal/media/PictureGroupV3Request;

    invoke-static {v0, p0, p1}, Lcom/sightcall/universal/media/GroupClient;->createGroup(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V

    return-void
.end method


# virtual methods
.method public abstract onGroupFailure()V
.end method

.method public abstract onGroupSuccess(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Response;)V
.end method

.method public replayRequest(Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->random:Ljava/util/Random;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/sightcall/universal/media/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sightcall/universal/media/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    int-to-long p0, v1

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
