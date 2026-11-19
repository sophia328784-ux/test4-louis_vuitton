.class Lnet/rtccloud/sdk/RecordingModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/RecordingModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RecordingModule$Native;
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
.method public start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V
    .locals 0

    invoke-static {p2}, Lnet/rtccloud/sdk/RecordingModule$Mode;->a(Lnet/rtccloud/sdk/RecordingModule$Mode;)I

    move-result p0

    invoke-static {p1, p0}, Lnet/rtccloud/sdk/Jni;->nStartRecording(Ljava/lang/String;I)V

    return-void
.end method
