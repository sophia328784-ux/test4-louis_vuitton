.class Lnet/rtccloud/sdk/DataChannelModule$Native$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/DataChannelModule$Native$1;->sendInBand([B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

.field final synthetic val$payload:[B


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$4;->this$0:Lnet/rtccloud/sdk/DataChannelModule$Native$1;

    iput-object p2, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$4;->val$payload:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1$4;->val$payload:[B

    invoke-static {p0}, Lnet/rtccloud/sdk/Jni;->nDataChannelSendInBand([B)Z

    return-void
.end method
