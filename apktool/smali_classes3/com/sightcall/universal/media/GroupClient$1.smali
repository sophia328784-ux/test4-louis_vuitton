.class Lcom/sightcall/universal/media/GroupClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/GroupClient;->createGroup(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sightcall/universal/media/PictureGroupV3Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sightcall/universal/media/GroupClient$GroupCallback;

.field final synthetic val$metadata:Lcom/sightcall/universal/media/Metadata;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/GroupClient$GroupCallback;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/media/GroupClient$1;->val$callback:Lcom/sightcall/universal/media/GroupClient$GroupCallback;

    iput-object p2, p0, Lcom/sightcall/universal/media/GroupClient$1;->val$metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/media/PictureGroupV3Response;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/media/GroupClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "onFailure()"

    invoke-virtual {p1, v0, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/GroupClient$1;->val$callback:Lcom/sightcall/universal/media/GroupClient$GroupCallback;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->onGroupFailure()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/media/PictureGroupV3Response;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/media/PictureGroupV3Response;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/media/GroupClient$1;->val$callback:Lcom/sightcall/universal/media/GroupClient$GroupCallback;

    iget-object p0, p0, Lcom/sightcall/universal/media/GroupClient$1;->val$metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->localGroup()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lcom/sightcall/universal/media/PictureGroupV3Response;

    invoke-virtual {p1, p0, p2}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->onGroupSuccess(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Response;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/media/GroupClient$1;->val$callback:Lcom/sightcall/universal/media/GroupClient$GroupCallback;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/GroupClient$GroupCallback;->onGroupFailure()V

    return-void
.end method
