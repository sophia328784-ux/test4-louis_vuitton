.class Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/DataChannelModule$Native$1;->ack(Ljava/lang/String;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

.field final synthetic val$flag:I

.field final synthetic val$id:I

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->val$uid:Ljava/lang/String;

    iput p3, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->val$id:I

    iput p4, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->val$uid:Ljava/lang/String;

    iget v1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->val$id:I

    iget p0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;->val$flag:I

    invoke-static {v0, v1, p0}, Lnet/rtccloud/sdk/Jni;->nDataChannelAck(Ljava/lang/String;II)Z

    return-void
.end method
