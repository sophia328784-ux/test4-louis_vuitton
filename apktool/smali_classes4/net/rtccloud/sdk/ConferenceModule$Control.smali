.class final enum Lnet/rtccloud/sdk/ConferenceModule$Control;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/ConferenceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/ConferenceModule$Control;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum DEAFEN:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum DEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum HANDDOWN:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum HANDUP:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum KICK:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum KICKALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum LOCK:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum LOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum MUTE:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum MUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum UNDEAFEN:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum UNDEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum UNLOCK:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum UNLOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum UNMUTE:Lnet/rtccloud/sdk/ConferenceModule$Control;

.field public static final enum UNMUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/ConferenceModule$Control;
    .locals 17

    sget-object v1, Lnet/rtccloud/sdk/ConferenceModule$Control;->HANDUP:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v2, Lnet/rtccloud/sdk/ConferenceModule$Control;->HANDDOWN:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v3, Lnet/rtccloud/sdk/ConferenceModule$Control;->MUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v4, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNMUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v5, Lnet/rtccloud/sdk/ConferenceModule$Control;->LOCK:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v6, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNLOCK:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v7, Lnet/rtccloud/sdk/ConferenceModule$Control;->MUTE:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v8, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNMUTE:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v9, Lnet/rtccloud/sdk/ConferenceModule$Control;->DEAFEN:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v10, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNDEAFEN:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v11, Lnet/rtccloud/sdk/ConferenceModule$Control;->DEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v12, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNDEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v13, Lnet/rtccloud/sdk/ConferenceModule$Control;->KICK:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v14, Lnet/rtccloud/sdk/ConferenceModule$Control;->LOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v15, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNLOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

    sget-object v16, Lnet/rtccloud/sdk/ConferenceModule$Control;->KICKALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    filled-new-array/range {v1 .. v16}, [Lnet/rtccloud/sdk/ConferenceModule$Control;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x0

    const/16 v2, 0x24

    const-string v3, "HANDUP"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->HANDUP:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x1

    const/16 v2, 0x25

    const-string v3, "HANDDOWN"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->HANDDOWN:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x2

    const/16 v2, 0x26

    const-string v3, "MUTEALL"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->MUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x3

    const/16 v2, 0x27

    const-string v3, "UNMUTEALL"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNMUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x4

    const/16 v2, 0x28

    const-string v3, "LOCK"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->LOCK:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x5

    const/16 v2, 0x29

    const-string v3, "UNLOCK"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNLOCK:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x6

    const/16 v2, 0x2a

    const-string v3, "MUTE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->MUTE:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/4 v1, 0x7

    const/16 v2, 0x2b

    const-string v3, "UNMUTE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNMUTE:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0x8

    const/16 v2, 0x2c

    const-string v3, "DEAFEN"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->DEAFEN:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0x9

    const/16 v2, 0x2d

    const-string v3, "UNDEAFEN"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNDEAFEN:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0xa

    const/16 v2, 0x33

    const-string v3, "DEAFENALL"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->DEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0xb

    const/16 v2, 0x34

    const-string v3, "UNDEAFENALL"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNDEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0xc

    const/16 v2, 0x2e

    const-string v3, "KICK"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->KICK:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0xd

    const/16 v2, 0x35

    const-string v3, "LOCK_SPEAKER"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->LOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0xe

    const/16 v2, 0x36

    const-string v3, "UNLOCK_SPEAKER"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNLOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    const/16 v1, 0xf

    const/16 v2, 0x38

    const-string v3, "KICKALL"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/ConferenceModule$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->KICKALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-static {}, Lnet/rtccloud/sdk/ConferenceModule$Control;->$values()[Lnet/rtccloud/sdk/ConferenceModule$Control;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->$VALUES:[Lnet/rtccloud/sdk/ConferenceModule$Control;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/rtccloud/sdk/ConferenceModule$Control;->value:I

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/ConferenceModule$Control;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ConferenceModule$Control;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/ConferenceModule$Control;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/ConferenceModule$Control;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/ConferenceModule$Control;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->$VALUES:[Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/ConferenceModule$Control;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/ConferenceModule$Control;

    return-object v0
.end method
