.class public final synthetic Lnet/rtccloud/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnet/rtccloud/sdk/DataChannelModule$1;


# direct methods
.method public synthetic constructor <init>(Lnet/rtccloud/sdk/DataChannelModule$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/a;->b:Lnet/rtccloud/sdk/DataChannelModule$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/a;->b:Lnet/rtccloud/sdk/DataChannelModule$1;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/DataChannelModule$1;->run()V

    return-void
.end method
