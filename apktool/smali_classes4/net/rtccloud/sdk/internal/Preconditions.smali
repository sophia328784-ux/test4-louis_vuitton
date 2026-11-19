.class public final Lnet/rtccloud/sdk/internal/Preconditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 19
    :cond_0
    const-string p1, "Precondition: A [call] must exist"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Precondition: A [call] must exist"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z
    .locals 1

    .line 30
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_0
    const-string v0, "Precondition: The [call] must be [%s] but is [%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;)Z
    .locals 1

    .line 26
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "Precondition: The [call] must be [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;)Z
    .locals 1

    .line 28
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eq p1, p3, :cond_1

    if-ne p1, p4, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Precondition: The [call] must be [%s] or [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_1

    if-ne p1, p5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Precondition: The [call] must be [%s] or [%s] or [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p4, p5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Participant;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Precondition: User must be [admin] of this conference"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceMeetingPointAttendee(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->isHost()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Precondition: User must be [attendee] of this MeetingPoint"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceMeetingPointConfigType(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint$Config;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/rtccloud/sdk/util/OldLogger;",
            "Lnet/rtccloud/sdk/MeetingPoint$Config;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Precondition: Config must be [%s] or [%s] or [%s] but is [%s]"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceMeetingPointHost(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->isHost()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Precondition: User must be [host] of this MeetingPoint"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z
    .locals 1

    .line 26
    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 27
    :cond_0
    const-string v0, "Precondition: MeetingPoint status must be [%s] but is [%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z
    .locals 1

    .line 24
    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "Precondition: MeetingPoint status must be [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eq p1, p3, :cond_1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Precondition: MeetingPoint status must be [%s] or [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Precondition: A [call] must not exist"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static varargs enforcePermissions(Lnet/rtccloud/sdk/util/OldLogger;Landroid/content/Context;Ljava/lang/String;[Lnet/rtccloud/sdk/util/Permission;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_1

    aget-object v6, p3, v3

    invoke-virtual {v6, v0}, Lnet/rtccloud/sdk/util/Permission;->isGranted(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/rtccloud/sdk/util/Permission;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Lnet/rtccloud/sdk/util/Permission;->description(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return-void

    :cond_2
    const-string p1, " requires the following permissions to be declared in [AndroidManifest.xml]:"

    invoke-static {p2, p1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-static {v0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalStateException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static enforceRtcc(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Precondition: Rtcc must not be null"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z
    .locals 1

    .line 30
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_0
    const-string v0, "Precondition: Rtcc must be [%s] but is [%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;)Z
    .locals 1

    .line 26
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "Precondition: Rtcc must be [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;)Z
    .locals 1

    .line 28
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eq p1, p3, :cond_1

    if-ne p1, p4, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Precondition: Rtcc must be [%s] or [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_1

    if-ne p1, p5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Precondition: Rtcc must be [%s] or [%s] or [%s] or [%s] but is [%s]"

    filled-new-array {p2, p3, p4, p5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceShareSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, p1, p2

    const v2, 0x1fa400

    if-le v1, v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Precondition: Share size must not be above [%d] but is [%d] (%dx%d)"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "x"

    const-string v2, "]"

    const-string v3, "Share size width and height must be > 0 but are ["

    invoke-static {p1, p2, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return v0
.end method

.method public static enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Precondition: User is null"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/User;->status()Lnet/rtccloud/sdk/User$Status;

    move-result-object p1

    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v1, "Precondition: User registration status must be [%s] but is [%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static enforceUserType(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/rtccloud/sdk/util/OldLogger;",
            "Lnet/rtccloud/sdk/User;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Precondition: User must be [%s] but is [%s]"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static enforceUserType(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/rtccloud/sdk/util/OldLogger;",
            "Lnet/rtccloud/sdk/User;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Precondition: User must be [%s] or [%s] but is [%s]"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static enforceVideoSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, p1, p2

    const v2, 0xe1000

    if-le v1, v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Precondition: Video size must not be above [%d] but is [%d] (%dx%d)"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "x"

    const-string v2, "]"

    const-string v3, "Video size width and height must be > 0 but are ["

    invoke-static {p1, p2, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return v0
.end method
