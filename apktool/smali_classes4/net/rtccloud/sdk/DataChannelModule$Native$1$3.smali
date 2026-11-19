.class Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/DataChannelModule$Native$1;->sendMpi(Ljava/lang/String;J[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

.field final synthetic val$messageId:J

.field final synthetic val$mpi:Ljava/lang/String;

.field final synthetic val$payload:[B


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;Ljava/lang/String;J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->val$mpi:Ljava/lang/String;

    iput-wide p3, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->val$messageId:J

    iput-object p5, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->val$payload:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->val$mpi:Ljava/lang/String;

    iget-wide v1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->val$messageId:J

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;->val$payload:[B

    invoke-static {v0, v1, v2, p0}, Lnet/rtccloud/sdk/Jni;->nSendDCMessageMPI(Ljava/lang/String;J[B)Z

    return-void
.end method
