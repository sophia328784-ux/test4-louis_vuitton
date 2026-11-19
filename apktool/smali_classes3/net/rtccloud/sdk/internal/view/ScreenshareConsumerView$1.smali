.class Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView$1;->this$0:Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView$1;->this$0:Lnet/rtccloud/sdk/internal/view/ScreenshareConsumerView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
