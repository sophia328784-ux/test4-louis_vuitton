.class Lcom/sightcall/universal/ar/ArBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/ar/ArBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final logger:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ArBridgeNoop"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/ar/ArBridge$1;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method


# virtual methods
.method public checkArCoreAvailability()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArBridge$1;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "checkArCoreAvailability()"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArBridge$1;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "getActivityClass()"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getArCoreState()Lcom/sightcall/universal/ar/ArCoreState;
    .locals 0

    sget-object p0, Lcom/sightcall/universal/ar/ArCoreState;->UNSUPPORTED:Lcom/sightcall/universal/ar/ArCoreState;

    return-object p0
.end method

.method public isArCoreUnsupported()Z
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArBridge$1;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "isArCoreUnsupported()"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startActivity(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArBridge$1;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "startActivity()"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void
.end method
