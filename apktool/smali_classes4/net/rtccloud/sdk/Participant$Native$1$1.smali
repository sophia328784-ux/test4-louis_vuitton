.class Lnet/rtccloud/sdk/Participant$Native$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/Participant$Native$1;->control(Lnet/rtccloud/sdk/Participant$Control;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/Participant$Native$1;

.field final synthetic val$ctrl:Lnet/rtccloud/sdk/Participant$Control;

.field final synthetic val$pid:I


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Participant$Native$1;Lnet/rtccloud/sdk/Participant$Control;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/Participant$Native$1$1;->this$0:Lnet/rtccloud/sdk/Participant$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/Participant$Native$1$1;->val$ctrl:Lnet/rtccloud/sdk/Participant$Control;

    iput p3, p0, Lnet/rtccloud/sdk/Participant$Native$1$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/Participant$Native$1$1;->val$ctrl:Lnet/rtccloud/sdk/Participant$Control;

    invoke-static {v0}, Lnet/rtccloud/sdk/Participant$Control;->a(Lnet/rtccloud/sdk/Participant$Control;)I

    move-result v0

    iget p0, p0, Lnet/rtccloud/sdk/Participant$Native$1$1;->val$pid:I

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/Jni;->nSendParticipantControl(II)V

    return-void
.end method
