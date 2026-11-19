.class public Lnet/rtccloud/sdk/RosterModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/RosterModule$Native;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final nativeRosterModule:Lnet/rtccloud/sdk/RosterModule$Native;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->ROSTER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/RosterModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/RosterModule$Native;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/RosterModule;->nativeRosterModule:Lnet/rtccloud/sdk/RosterModule$Native;

    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/RosterModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "add(uids=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->isVarargsNullOrEmpty([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, v0}, Lnet/rtccloud/sdk/internal/util/Utils;->consolidateUidInput([Ljava/lang/String;Lnet/rtccloud/sdk/util/OldLogger;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lnet/rtccloud/sdk/RosterModule;->nativeRosterModule:Lnet/rtccloud/sdk/RosterModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RosterModule$Native;->add([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "[uids] must contain at least one valid uid"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "[uids] must not be null nor empty"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public clear()Z
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/RosterModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "clear()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/RosterModule;->nativeRosterModule:Lnet/rtccloud/sdk/RosterModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/RosterModule$Native;->clear()Z

    move-result p0

    return p0
.end method

.method public varargs remove([Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/RosterModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "remove(uids=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->isVarargsNullOrEmpty([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, v0}, Lnet/rtccloud/sdk/internal/util/Utils;->consolidateUidInput([Ljava/lang/String;Lnet/rtccloud/sdk/util/OldLogger;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lnet/rtccloud/sdk/RosterModule;->nativeRosterModule:Lnet/rtccloud/sdk/RosterModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/RosterModule$Native;->remove([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "[uids] must contain at least one valid uid"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "[uids] must not be null nor empty"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RosterModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method
