.class Lnet/rtccloud/sdk/Call$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/Call;->updateStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/Call;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Call$1;->this$0:Lnet/rtccloud/sdk/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$1;->this$0:Lnet/rtccloud/sdk/Call;

    invoke-static {p0}, Lnet/rtccloud/sdk/Call;->c(Lnet/rtccloud/sdk/Call;)V

    return-void
.end method
