.class public final synthetic Lib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnet/rtccloud/sdk/AudioModule;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lnet/rtccloud/sdk/AudioModule;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib;->b:Lnet/rtccloud/sdk/AudioModule;

    iput-boolean p2, p0, Lib;->c:Z

    iput-boolean p3, p0, Lib;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lib;->c:Z

    iget-boolean v1, p0, Lib;->d:Z

    iget-object p0, p0, Lib;->b:Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p0, v0, v1}, Lnet/rtccloud/sdk/AudioModule;->c(Lnet/rtccloud/sdk/AudioModule;ZZ)V

    return-void
.end method
