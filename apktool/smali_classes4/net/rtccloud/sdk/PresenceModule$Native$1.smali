.class Lnet/rtccloud/sdk/PresenceModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/PresenceModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/PresenceModule$Native;
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
.method public request([Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nPresenceGet([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public requestAll()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nPresenceGetRoster()Z

    move-result p0

    return p0
.end method

.method public set(I)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nPresenceSet(I)Z

    move-result p0

    return p0
.end method
