.class Lnet/rtccloud/sdk/User$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/User$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/User$Native;
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
.method public getSid()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetSid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUid()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetUid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetDisplayName(Ljava/lang/String;)V

    return-void
.end method
