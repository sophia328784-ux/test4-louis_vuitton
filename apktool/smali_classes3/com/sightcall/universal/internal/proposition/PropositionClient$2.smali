.class Lcom/sightcall/universal/internal/proposition/PropositionClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/proposition/PropositionClient;->cancel(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;)Lretrofit2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionClient$2;->val$callback:Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;

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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "cancel.onFailure()"

    invoke-virtual {p1, v0, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionClient$2;->val$callback:Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;->onCancelFailure()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p2, p1, Lokhttp3/Response;->r:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancel.onResponse() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lokhttp3/Response;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionClient$2;->val$callback:Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;->onCancelError()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "cancel.onResponse()"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionClient$2;->val$callback:Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;->onCancelSuccess()V

    return-void
.end method
