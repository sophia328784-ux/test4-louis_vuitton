.class Lnet/rtccloud/sdk/Call$Native$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/Call$Native$1;->control(Lnet/rtccloud/sdk/Call$Control;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/Call$Native$1;

.field final synthetic val$ctrl:Lnet/rtccloud/sdk/Call$Control;

.field final synthetic val$id:I

.field final synthetic val$id2:I


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call$Native$1;Lnet/rtccloud/sdk/Call$Control;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->this$0:Lnet/rtccloud/sdk/Call$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->val$ctrl:Lnet/rtccloud/sdk/Call$Control;

    iput p3, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->val$id:I

    iput p4, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->val$id2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->val$ctrl:Lnet/rtccloud/sdk/Call$Control;

    invoke-static {v0}, Lnet/rtccloud/sdk/Call$Control;->a(Lnet/rtccloud/sdk/Call$Control;)I

    move-result v0

    iget v1, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->val$id:I

    iget p0, p0, Lnet/rtccloud/sdk/Call$Native$1$1;->val$id2:I

    invoke-static {v0, v1, p0}, Lnet/rtccloud/sdk/Jni;->nSendCallControl(III)V

    return-void
.end method
