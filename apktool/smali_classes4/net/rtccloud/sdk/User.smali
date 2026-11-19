.class public abstract Lnet/rtccloud/sdk/User;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/User$Internal;,
        Lnet/rtccloud/sdk/User$External;,
        Lnet/rtccloud/sdk/User$SixDigits;,
        Lnet/rtccloud/sdk/User$Builder;,
        Lnet/rtccloud/sdk/User$Native;,
        Lnet/rtccloud/sdk/User$Status;
    }
.end annotation


# static fields
.field public static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private advancedAnnotations:Z

.field private final appid:Ljava/lang/String;

.field private attendeeSslPlugin:Z

.field private displayName:Ljava/lang/String;

.field private environment:I

.field private final extras:Landroid/os/Bundle;

.field private final hap:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private liveTranslationLanguage:Ljava/lang/String;

.field private localUdpDisabled:Z

.field private final nativeInterface:Lnet/rtccloud/sdk/User$Native;

.field private rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private status:Lnet/rtccloud/sdk/User$Status;

.field private usapTurnDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->USER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/User;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/User$Native;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/User;->extras:Landroid/os/Bundle;

    sget-object v0, Lnet/rtccloud/sdk/User$Status;->NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/User;->status:Lnet/rtccloud/sdk/User$Status;

    const/4 v0, 0x0

    iput v0, p0, Lnet/rtccloud/sdk/User;->environment:I

    iput-object p1, p0, Lnet/rtccloud/sdk/User;->nativeInterface:Lnet/rtccloud/sdk/User$Native;

    iput-object p2, p0, Lnet/rtccloud/sdk/User;->appid:Ljava/lang/String;

    iput-object p3, p0, Lnet/rtccloud/sdk/User;->hap:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnet/rtccloud/sdk/User;->generateRandomSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static external(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$External$Builder;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/User$External$Builder;

    invoke-direct {v0, p0, p1}, Lnet/rtccloud/sdk/User$External$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static generateRandomSuffix()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x3e

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-char v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x7as
        0x65s
        0x72s
        0x74s
        0x79s
        0x75s
        0x69s
        0x6fs
        0x70s
        0x71s
        0x73s
        0x64s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x77s
        0x78s
        0x63s
        0x76s
        0x62s
        0x6es
        0x41s
        0x5as
        0x45s
        0x52s
        0x54s
        0x59s
        0x55s
        0x49s
        0x4fs
        0x50s
        0x51s
        0x53s
        0x44s
        0x46s
        0x47s
        0x48s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x57s
        0x58s
        0x43s
        0x56s
        0x42s
        0x4es
    .end array-data
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$Internal$Builder;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/User$Internal$Builder;

    invoke-direct {v0, p0, p1}, Lnet/rtccloud/sdk/User$Internal$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sixDigits(Ljava/lang/String;Ljava/lang/String;)Lnet/rtccloud/sdk/User$SixDigits$Builder;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/User$SixDigits$Builder;

    invoke-direct {v0, p0, p1}, Lnet/rtccloud/sdk/User$SixDigits$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static with(Lnet/rtccloud/sdk/User$Builder;)Lnet/rtccloud/sdk/User;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lnet/rtccloud/sdk/User;",
            ">(",
            "Lnet/rtccloud/sdk/User$Builder<",
            "TU;*>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->appid()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lnet/rtccloud/sdk/util/Input;->APP_ID:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v1, v3}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "]"

    const-string v5, "] but is ["

    if-eqz v2, :cond_6

    move-object v2, v4

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->hap()Ljava/lang/String;

    move-result-object v4

    instance-of v1, p0, Lnet/rtccloud/sdk/User$Internal$Builder;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lnet/rtccloud/sdk/User$Internal$Builder;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$Internal$Builder;->token()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lnet/rtccloud/sdk/util/Input;->TOKEN:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v6, v1}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v0, Lnet/rtccloud/sdk/User$Internal;

    sget-object v2, Lnet/rtccloud/sdk/User$Native;->JNI:Lnet/rtccloud/sdk/User$Native;

    invoke-direct {v0, v2, v3, v4, v1}, Lnet/rtccloud/sdk/User$Internal;-><init>(Lnet/rtccloud/sdk/User$Native;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "[token] must be ["

    invoke-static {v6, v5, v1, v2, p0}, Lb21;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v1, p0, Lnet/rtccloud/sdk/User$External$Builder;

    const-string v6, "[suffix] must be ["

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lnet/rtccloud/sdk/User$External$Builder;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$External$Builder;->uid()Ljava/lang/String;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$External$Builder;->suffix()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lnet/rtccloud/sdk/util/Input;->SUFFIX:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v8, v7}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    new-instance v1, Lnet/rtccloud/sdk/User$External;

    sget-object v2, Lnet/rtccloud/sdk/User$Native;->JNI:Lnet/rtccloud/sdk/User$Native;

    invoke-virtual {v9}, Lnet/rtccloud/sdk/User$External$Builder;->uid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lnet/rtccloud/sdk/User$External$Builder;->suffix()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lnet/rtccloud/sdk/User$External;-><init>(Lnet/rtccloud/sdk/User$Native;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v8, v5, v7, v2, v6}, Lb21;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    instance-of v1, p0, Lnet/rtccloud/sdk/User$SixDigits$Builder;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lnet/rtccloud/sdk/User$SixDigits$Builder;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$SixDigits$Builder;->pin()Ljava/lang/String;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lnet/rtccloud/sdk/util/Input;->SUFFIX:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v8, v7}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v1

    new-instance v1, Lnet/rtccloud/sdk/User$SixDigits;

    sget-object v2, Lnet/rtccloud/sdk/User$Native;->JNI:Lnet/rtccloud/sdk/User$Native;

    invoke-virtual {v9}, Lnet/rtccloud/sdk/User$SixDigits$Builder;->pin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lnet/rtccloud/sdk/User$SixDigits$Builder;->suffix()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lnet/rtccloud/sdk/User$SixDigits;-><init>(Lnet/rtccloud/sdk/User$Native;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->displayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/rtccloud/sdk/User;->displayName:Ljava/lang/String;

    iget-object v1, v0, Lnet/rtccloud/sdk/User;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->extras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->usapTurnDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lnet/rtccloud/sdk/User;->usapTurnDisabled:Z

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->localUdpDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lnet/rtccloud/sdk/User;->localUdpDisabled:Z

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->attendeeSslPlugin()Z

    move-result v1

    iput-boolean v1, v0, Lnet/rtccloud/sdk/User;->attendeeSslPlugin:Z

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->advancedAnnotations()Z

    move-result v1

    iput-boolean v1, v0, Lnet/rtccloud/sdk/User;->advancedAnnotations:Z

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->liveTranslationLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/rtccloud/sdk/User;->liveTranslationLanguage:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User$Builder;->environment()I

    move-result p0

    iput p0, v0, Lnet/rtccloud/sdk/User;->environment:I

    return-object v0

    :cond_4
    invoke-static {v8, v5, v7, v2, v6}, Lb21;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "["

    const-string v2, "] class is invalid for a user builder"

    invoke-static {v1, p0, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_6
    move-object v2, v4

    const-string p0, "[appid] must be ["

    invoke-static {v1, v5, v3, v2, p0}, Lb21;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_7
    const-string p0, "[user] must not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public advancedAnnotations()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User;->advancedAnnotations:Z

    return p0
.end method

.method public appid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public attendeeSslPlugin()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User;->attendeeSslPlugin:Z

    return p0
.end method

.method public displayName()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lnet/rtccloud/sdk/User;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public displayName(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/User;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "displayName(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lnet/rtccloud/sdk/util/Input;->DISPLAY_NAME:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "[displayName] must be [%s] but is [%s]"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lnet/rtccloud/sdk/User;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/User;->updateDisplayName()V

    return-void
.end method

.method public environment()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/User;->environment:I

    return p0
.end method

.method public extras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public handleRegistration(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/User;->status:Lnet/rtccloud/sdk/User$Status;

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/User$Status;->NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/User;->status:Lnet/rtccloud/sdk/User$Status;

    :goto_0
    iget-object p1, p0, Lnet/rtccloud/sdk/User;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->status:Lnet/rtccloud/sdk/User$Status;

    invoke-direct {v0, p0, p2}, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;-><init>(Lnet/rtccloud/sdk/User$Status;I)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public hap()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->hap:Ljava/lang/String;

    return-object p0
.end method

.method public ip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public ip(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lnet/rtccloud/sdk/User;->ip:Ljava/lang/String;

    return-void
.end method

.method public liveTranslationLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->liveTranslationLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public localUdpDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User;->localUdpDisabled:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/User;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-void
.end method

.method public onUnbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/User;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v0, Lnet/rtccloud/sdk/User$Status;->NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/User;->status:Lnet/rtccloud/sdk/User$Status;

    return-void
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public sid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->nativeInterface:Lnet/rtccloud/sdk/User$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/User$Native;->getSid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public status()Lnet/rtccloud/sdk/User$Status;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->status:Lnet/rtccloud/sdk/User$Status;

    return-object p0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public uidLocal()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->nativeInterface:Lnet/rtccloud/sdk/User$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/User$Native;->getUid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayName()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/User;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/User;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtcc(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/User;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/User;->nativeInterface:Lnet/rtccloud/sdk/User$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/User;->displayName:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    invoke-interface {v0, p0}, Lnet/rtccloud/sdk/User$Native;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public usapTurnDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User;->usapTurnDisabled:Z

    return p0
.end method
