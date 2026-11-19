.class Lcom/sightcall/universal/agent/UniversalAgent$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->createRecording(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/agent/CreateRecordingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sightcall/universal/agent/recording/RecordingV3Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/CreateRecordingCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/CreateRecordingCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$32;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$32;->val$cb:Lcom/sightcall/universal/agent/CreateRecordingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/agent/recording/RecordingV3Response;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/agent/recording/RecordingV3Response;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/agent/recording/RecordingV3Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$32;->val$cb:Lcom/sightcall/universal/agent/CreateRecordingCallback;

    new-instance p1, Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback;->onCreateRecordingError(Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;)V

    return-void

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/universal/agent/recording/RecordingV3Response;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$32;->val$cb:Lcom/sightcall/universal/agent/CreateRecordingCallback;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback;->onCreateRecordingError(Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;)V

    return-void

    :cond_1
    new-instance p2, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;

    invoke-static {p1}, Lcom/sightcall/universal/agent/recording/RecordingV3MappersKt;->toRecordingEntity(Lcom/sightcall/universal/agent/recording/RecordingV3Response;)Lcom/sightcall/universal/agent/recording/RecordingV3Entity;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;-><init>(Lcom/sightcall/universal/agent/recording/RecordingV3Entity;)V

    invoke-interface {p0, p2}, Lcom/sightcall/universal/agent/CreateRecordingCallback;->onCreateRecordingSuccess(Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;)V

    return-void
.end method
