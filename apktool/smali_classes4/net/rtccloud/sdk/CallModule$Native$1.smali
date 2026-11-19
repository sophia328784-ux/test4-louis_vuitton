.class Lnet/rtccloud/sdk/CallModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/CallModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/CallModule$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nCreateCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public callAttendee(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nCreateCallAttendee(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public callExternal(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nCreateCallExternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public callHost(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nCreateCallHost(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public callMirroring()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nCreateCallMirroring()Z

    move-result p0

    return p0
.end method

.method public callSixDigits(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nCreateCallSixDigits(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
