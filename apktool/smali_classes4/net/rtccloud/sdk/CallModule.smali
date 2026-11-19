.class public Lnet/rtccloud/sdk/CallModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/CallModule$Native;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field call:Lnet/rtccloud/sdk/Call;

.field final nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CALL:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule$Native;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    return-void
.end method

.method private _create(Ljava/lang/String;Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 8

    sget-object v7, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "create(uid=%s, parameters=%s)"

    filled-new-array/range {p1 .. p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    sget-object v0, Lnet/rtccloud/sdk/util/Input;->UID:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[uid] must be [%s] but is [%s]"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v7, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v7, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    :cond_3
    instance-of v1, v0, Lnet/rtccloud/sdk/User$Internal;

    if-eqz v1, :cond_6

    new-instance v0, Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v5, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call$Parameters;->uidType()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown [uidType] defined in parameters [%d]"

    invoke-virtual {v7, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {v0, p1}, Lnet/rtccloud/sdk/CallModule$Native;->callExternal(Ljava/lang/String;)Z

    return-void

    :cond_5
    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {v0, p1}, Lnet/rtccloud/sdk/CallModule$Native;->call(Ljava/lang/String;)Z

    return-void

    :cond_6
    instance-of v1, v0, Lnet/rtccloud/sdk/User$SixDigits;

    if-eqz v1, :cond_8

    check-cast v0, Lnet/rtccloud/sdk/User$SixDigits;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$SixDigits;->pin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v4, v0

    new-instance v0, Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v5, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {v0, v4}, Lnet/rtccloud/sdk/CallModule$Native;->callSixDigits(Ljava/lang/String;)Z

    return-void

    :cond_7
    move-object v4, v0

    const-string v0, "[SixDigits] user only allowed to call its pin [%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    instance-of v1, v0, Lnet/rtccloud/sdk/User$External;

    if-eqz v1, :cond_a

    check-cast v0, Lnet/rtccloud/sdk/User$External;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User$External;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v5, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {v0, p1}, Lnet/rtccloud/sdk/CallModule$Native;->call(Ljava/lang/String;)Z

    return-void

    :cond_9
    const-string v1, "[External] user only allowed to call its parent [%s]"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid user type [%s]"

    invoke-virtual {v7, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    const-string v0, "[parameters] must not be null"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    :cond_c
    const-string v0, "[uid] must not be null"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
.end method

.method private _create(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 7

    .line 246
    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "create(parameters=%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 247
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    const-class v3, Lnet/rtccloud/sdk/User$SixDigits;

    const-class v4, Lnet/rtccloud/sdk/User$External;

    invoke-static {v0, v1, v3, v4}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserType(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v3, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v4, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v3, v4}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    iget-object v3, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v0, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 251
    :cond_3
    instance-of v0, v1, Lnet/rtccloud/sdk/User$SixDigits;

    if-eqz v0, :cond_4

    .line 252
    check-cast v1, Lnet/rtccloud/sdk/User$SixDigits;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$SixDigits;->pin()Ljava/lang/String;

    move-result-object v4

    .line 253
    new-instance v0, Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v5, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    .line 254
    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {v0, v4}, Lnet/rtccloud/sdk/CallModule$Native;->callSixDigits(Ljava/lang/String;)Z

    return-void

    .line 255
    :cond_4
    instance-of v0, v1, Lnet/rtccloud/sdk/User$External;

    if-eqz v0, :cond_5

    .line 256
    check-cast v1, Lnet/rtccloud/sdk/User$External;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$External;->uid()Ljava/lang/String;

    move-result-object v4

    .line 257
    new-instance v0, Lnet/rtccloud/sdk/Call;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v5, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    .line 258
    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {v0, v4}, Lnet/rtccloud/sdk/CallModule$Native;->call(Ljava/lang/String;)Z

    :cond_5
    :goto_0
    return-void

    .line 259
    :cond_6
    const-string v0, "[parameters] must not be null"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0
.end method

.method private _create(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 10

    .line 260
    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "create(mp=%s, parameters=%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    .line 261
    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eqz p2, :cond_7

    .line 262
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 263
    :cond_0
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p1, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->isHost()Z

    move-result p1

    const/16 v1, 0x7141

    if-eqz p1, :cond_4

    .line 266
    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 267
    const-string p1, "call(mpid=%s, parameters=%s) as host"

    filled-new-array {v7, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_3
    new-instance v3, Lnet/rtccloud/sdk/Call;

    iget-object v4, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v6, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v8, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v3, v5, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    .line 269
    iget-object p0, v5, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {p0, v7}, Lnet/rtccloud/sdk/CallModule$Native;->callHost(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 270
    iget-object p0, v5, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/Call;->updateStatus(I)V

    return-void

    :cond_4
    move-object v5, p0

    move-object v9, p2

    .line 271
    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 272
    const-string p0, "call(mpid=%s, parameters=%s) as attendee"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_5
    new-instance v3, Lnet/rtccloud/sdk/Call;

    iget-object v4, v5, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v6, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    sget-object v8, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

    invoke-direct/range {v3 .. v9}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v3, v5, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    .line 274
    iget-object p0, v5, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {p0, v7}, Lnet/rtccloud/sdk/CallModule$Native;->callAttendee(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 275
    iget-object p0, v5, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/Call;->updateStatus(I)V

    :cond_6
    :goto_0
    return-void

    .line 276
    :cond_7
    const-string p0, "[parameters] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0

    .line 277
    :cond_8
    const-string p0, "[mpid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0

    .line 278
    :cond_9
    const-string p0, "[mp] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method private _mirroring(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 8

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "mirroring(parameters=%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceNoCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lnet/rtccloud/sdk/Call;

    iget-object v2, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v4, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    const-string v5, "mirroring"

    sget-object v6, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v1, v3, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, v3, Lnet/rtccloud/sdk/CallModule;->nativeInterface:Lnet/rtccloud/sdk/CallModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/CallModule$Native;->callMirroring()Z

    return-void

    :cond_3
    const-string p0, "[parameters] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public create()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/CallModule;->_create(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 1

    .line 10
    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/CallModule;->_create(Ljava/lang/String;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public create(Ljava/lang/String;Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/CallModule;->_create(Ljava/lang/String;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public create(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/CallModule;->_create(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public create(Lnet/rtccloud/sdk/MeetingPoint;)V
    .locals 1

    .line 12
    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/CallModule;->_create(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public create(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/CallModule;->_create(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public get()Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public handle(IIILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_1

    iget v1, v0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput p2, v0, Lnet/rtccloud/sdk/Call;->id:I

    goto :goto_0

    :cond_0
    if-eq v1, p2, :cond_1

    sget-object p0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, v0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong call id, expected [%d] but has [%d]"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const/16 v1, 0x6100

    if-nez v0, :cond_3

    if-ne p1, v1, :cond_2

    new-instance v2, Lnet/rtccloud/sdk/Call;

    iget-object v3, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v5, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    move-object v4, p0

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lnet/rtccloud/sdk/Call;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;ILjava/lang/String;)V

    iput-object v2, v4, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    move-object v0, v2

    goto :goto_1

    :cond_2
    sget-object p0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "A [call] must exist"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v4, p0

    move v6, p2

    move-object v7, p4

    :goto_1
    if-eq p1, v1, :cond_b

    const/16 p0, 0x7100

    if-eq p1, p0, :cond_9

    const/16 p0, 0x7203

    const/4 p2, 0x1

    if-eq p1, p0, :cond_7

    const/16 p0, 0x7300

    if-eq p1, p0, :cond_6

    const/16 p0, 0x7500

    if-eq p1, p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p0, 0x400

    and-int/lit16 p1, p3, 0x400

    iget-object p3, v4, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-ne p1, p0, :cond_5

    invoke-virtual {p3, p2}, Lnet/rtccloud/sdk/Call;->setUseNgaSVG(Z)V

    iget-object p0, v4, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->activateSvgAnnotation()V

    return-void

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lnet/rtccloud/sdk/Call;->setUseNgaSVG(Z)V

    iget-object p0, v4, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->deactivateSvgAnnotation()V

    return-void

    :cond_6
    invoke-virtual {v0, v7}, Lnet/rtccloud/sdk/Call;->updateSipId(Ljava/lang/String;)V

    return-void

    :cond_7
    and-int/lit8 p0, p3, 0xf

    shr-int/lit8 p1, p3, 0x8

    and-int/lit8 p1, p1, 0xf

    if-ne p1, p2, :cond_8

    iget-object p1, v4, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->liveTranslationNewSentenceCallback:Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;

    invoke-interface {p1, v7, p0}, Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;->newSentence(Ljava/lang/String;I)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    const/16 p0, 0x71a0

    if-eq p3, p0, :cond_a

    const/16 p0, 0x71a1

    if-eq p3, p0, :cond_a

    const/16 p0, 0x71b0

    if-eq p3, p0, :cond_a

    invoke-virtual {v0, p3}, Lnet/rtccloud/sdk/Call;->updateStatus(I)V

    return-void

    :cond_a
    iget-object p0, v4, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->recordingModule:Lnet/rtccloud/sdk/RecordingModule;

    invoke-virtual {p0, p3}, Lnet/rtccloud/sdk/RecordingModule;->handle(I)V

    return-void

    :cond_b
    invoke-virtual {v0, v6, p3, v7}, Lnet/rtccloud/sdk/Call;->created(IILjava/lang/String;)V

    return-void
.end method

.method public handleAudio(Z)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStart()V

    return-void

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStop()V

    return-void
.end method

.method public handleAudioFrameLength(I)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->setFrameLength(I)V

    return-void
.end method

.method public handleAudioFrequency(I)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->setFrequency(I)V

    return-void
.end method

.method public handleShareStartStop(II)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/ProgressivexStopEvent;

    invoke-direct {v0}, Lnet/rtccloud/sdk/event/call/ProgressivexStopEvent;-><init>()V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p2, p2, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateReceivingStatus(Z)V

    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateSendingStatus(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateReceivingStatus(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateSendingStatus(Z)V

    return-void

    :pswitch_4
    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_2

    :goto_0
    return-void

    :pswitch_5
    iget-object p2, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p2, p2, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateReceivingStatus(Z)V

    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateSendingStatus(Z)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateReceivingStatus(Z)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/ScreenshareModule;->updateSendingStatus(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9303
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9201
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9201
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public handleVideoProfile(I)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateProfile(I)V

    return-void
.end method

.method public handleVideoStartStop(II)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/CallModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x9230

    if-eq p1, v0, :cond_1

    const v1, 0x9240

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateStatus(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateReceivingStatus(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/VideoModule;->updateSendingStatus(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mirroring()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/CallModule;->_mirroring(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public mirroring(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/CallModule;->_mirroring(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/CallModule;->call:Lnet/rtccloud/sdk/Call;

    return-void
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/CallModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method
