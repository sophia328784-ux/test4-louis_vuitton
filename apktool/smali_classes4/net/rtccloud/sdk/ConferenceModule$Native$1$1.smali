.class Lnet/rtccloud/sdk/ConferenceModule$Native$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/ConferenceModule$Native$1;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/ConferenceModule$Native$1;

.field final synthetic val$ctrl:Lnet/rtccloud/sdk/ConferenceModule$Control;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/ConferenceModule$Native$1;Lnet/rtccloud/sdk/ConferenceModule$Control;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule$Native$1$1;->this$0:Lnet/rtccloud/sdk/ConferenceModule$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/ConferenceModule$Native$1$1;->val$ctrl:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule$Native$1$1;->val$ctrl:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-static {p0}, Lnet/rtccloud/sdk/ConferenceModule$Control;->a(Lnet/rtccloud/sdk/ConferenceModule$Control;)I

    move-result p0

    invoke-static {p0}, Lnet/rtccloud/sdk/Jni;->nSendConfControl(I)V

    return-void
.end method
