.class Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/DataChannelModule$Native$1;->send([BJLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

.field final synthetic val$id:J

.field final synthetic val$payload:[B

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;[BJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->val$payload:[B

    iput-wide p3, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->val$id:J

    iput-object p5, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->val$payload:[B

    iget-wide v1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->val$id:J

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;->val$uid:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lnet/rtccloud/sdk/Jni;->nDataChannelSendOutOfBand([BJLjava/lang/String;)Z

    return-void
.end method
