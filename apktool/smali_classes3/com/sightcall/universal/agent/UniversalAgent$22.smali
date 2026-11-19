.class Lcom/sightcall/universal/agent/UniversalAgent$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->syncFcmToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$22;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {}, Lcom/sightcall/universal/agent/UniversalAgent;->n()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "FCM Token retrieve token failure"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method
