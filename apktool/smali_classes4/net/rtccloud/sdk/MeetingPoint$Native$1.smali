.class Lnet/rtccloud/sdk/MeetingPoint$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/MeetingPoint$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint$Native;
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
.method public control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V
    .locals 0

    iget p0, p2, Lnet/rtccloud/sdk/MeetingPoint$Control;->value:I

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lnet/rtccloud/sdk/Jni;->nControlMeetingPoint(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V
    .locals 0

    .line 7
    iget p0, p2, Lnet/rtccloud/sdk/MeetingPoint$Control;->value:I

    invoke-static {p1, p0, p3}, Lnet/rtccloud/sdk/Jni;->nControlMeetingPoint(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nGetMeetingPoint(Ljava/lang/String;)V

    return-void
.end method
