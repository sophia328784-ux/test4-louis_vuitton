.class Lnet/rtccloud/sdk/RosterModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/RosterModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RosterModule$Native;
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
.method public add([Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nRosterAdd([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clear()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nRosterClear()Z

    move-result p0

    return p0
.end method

.method public remove([Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nRosterRemove([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
