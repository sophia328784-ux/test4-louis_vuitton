.class public Lnet/rtccloud/sdk/UtilsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/UtilsModule$Native;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->ENGINE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/UtilsModule$Native;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    return-void
.end method


# virtual methods
.method public checkCloudConnection()I
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "checkCloudConnection()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/UtilsModule$Native;->checkCloudConnection()I

    move-result p0

    return p0
.end method

.method public setDeadPartyTimeout(I)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setDeadPartyTimeout(timeout=%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/UtilsModule$Native;->setDeadPartyTimeout(I)Z

    return-void
.end method

.method public setEnableLocalIce(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setEnableLocalIce(value=%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/UtilsModule$Native;->setEnableLocalIce(I)Z

    return-void
.end method

.method public setEnableUSAPTURN(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setEnableUSAPTURN(value=%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/UtilsModule$Native;->setEnableUSAPTURN(I)Z

    return-void
.end method

.method public setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Audio;)V
    .locals 3

    .line 17
    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "setEncodingParameters(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/UtilsModule$Native;->setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Audio;)Z

    return-void
.end method

.method public setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Video;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "setEncodingParameters(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/UtilsModule$Native;->setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Video;)Z

    return-void
.end method

.method public swapFathers()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/UtilsModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "swapFathers()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/UtilsModule;->nativeInterface:Lnet/rtccloud/sdk/UtilsModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/UtilsModule$Native;->swapFathers()V

    return-void
.end method
