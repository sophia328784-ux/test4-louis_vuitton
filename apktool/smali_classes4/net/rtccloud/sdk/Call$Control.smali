.class final enum Lnet/rtccloud/sdk/Call$Control;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Call$Control;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Call$Control;

.field public static final enum BOOKMARK:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum HOLD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum JOIN:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum LOCKPROFILE:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum PAUSERECORD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum PROFILEHD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum PROFILEMD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum PROFILESD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum RESUME:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum RESUMERECORD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum START:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STARTNOVIDEO:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STARTSHARE:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STARTVIDEO:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STOP:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STOPRECORD:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STOPSHARE:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum STOPVIDEO:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum SWITCH:Lnet/rtccloud/sdk/Call$Control;

.field public static final enum UNLOCKPROFILE:Lnet/rtccloud/sdk/Call$Control;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Call$Control;
    .locals 21

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->START:Lnet/rtccloud/sdk/Call$Control;

    sget-object v2, Lnet/rtccloud/sdk/Call$Control;->STARTNOVIDEO:Lnet/rtccloud/sdk/Call$Control;

    sget-object v3, Lnet/rtccloud/sdk/Call$Control;->STOP:Lnet/rtccloud/sdk/Call$Control;

    sget-object v4, Lnet/rtccloud/sdk/Call$Control;->STARTVIDEO:Lnet/rtccloud/sdk/Call$Control;

    sget-object v5, Lnet/rtccloud/sdk/Call$Control;->STOPVIDEO:Lnet/rtccloud/sdk/Call$Control;

    sget-object v6, Lnet/rtccloud/sdk/Call$Control;->JOIN:Lnet/rtccloud/sdk/Call$Control;

    sget-object v7, Lnet/rtccloud/sdk/Call$Control;->SWITCH:Lnet/rtccloud/sdk/Call$Control;

    sget-object v8, Lnet/rtccloud/sdk/Call$Control;->PROFILESD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v9, Lnet/rtccloud/sdk/Call$Control;->PROFILEMD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v10, Lnet/rtccloud/sdk/Call$Control;->PROFILEHD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v11, Lnet/rtccloud/sdk/Call$Control;->LOCKPROFILE:Lnet/rtccloud/sdk/Call$Control;

    sget-object v12, Lnet/rtccloud/sdk/Call$Control;->UNLOCKPROFILE:Lnet/rtccloud/sdk/Call$Control;

    sget-object v13, Lnet/rtccloud/sdk/Call$Control;->HOLD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v14, Lnet/rtccloud/sdk/Call$Control;->RESUME:Lnet/rtccloud/sdk/Call$Control;

    sget-object v15, Lnet/rtccloud/sdk/Call$Control;->STARTSHARE:Lnet/rtccloud/sdk/Call$Control;

    sget-object v16, Lnet/rtccloud/sdk/Call$Control;->STOPSHARE:Lnet/rtccloud/sdk/Call$Control;

    sget-object v17, Lnet/rtccloud/sdk/Call$Control;->STOPRECORD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v18, Lnet/rtccloud/sdk/Call$Control;->PAUSERECORD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v19, Lnet/rtccloud/sdk/Call$Control;->RESUMERECORD:Lnet/rtccloud/sdk/Call$Control;

    sget-object v20, Lnet/rtccloud/sdk/Call$Control;->BOOKMARK:Lnet/rtccloud/sdk/Call$Control;

    filled-new-array/range {v1 .. v20}, [Lnet/rtccloud/sdk/Call$Control;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x0

    const/16 v2, 0x4100

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->START:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x1

    const/16 v2, 0x41f0

    const-string v3, "STARTNOVIDEO"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STARTNOVIDEO:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x2

    const/16 v2, 0x4200

    const-string v3, "STOP"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STOP:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x3

    const/16 v2, 0x4300

    const-string v3, "STARTVIDEO"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STARTVIDEO:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x4

    const/16 v2, 0x4400

    const-string v3, "STOPVIDEO"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STOPVIDEO:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x5

    const/16 v2, 0x4500

    const-string v3, "JOIN"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->JOIN:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x6

    const/16 v2, 0x4600

    const-string v3, "SWITCH"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->SWITCH:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/4 v1, 0x7

    const/16 v2, 0x4700

    const-string v3, "PROFILESD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->PROFILESD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0x8

    const/16 v2, 0x4800

    const-string v3, "PROFILEMD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->PROFILEMD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0x9

    const/16 v2, 0x4900

    const-string v3, "PROFILEHD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->PROFILEHD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0xa

    const/16 v2, 0x4980

    const-string v3, "LOCKPROFILE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->LOCKPROFILE:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0xb

    const/16 v2, 0x4990

    const-string v3, "UNLOCKPROFILE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->UNLOCKPROFILE:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0xc

    const/16 v2, 0x4a00

    const-string v3, "HOLD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->HOLD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0xd

    const/16 v2, 0x4b00

    const-string v3, "RESUME"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->RESUME:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0xe

    const/16 v2, 0x4c00

    const-string v3, "STARTSHARE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STARTSHARE:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0xf

    const/16 v2, 0x4d00

    const-string v3, "STOPSHARE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STOPSHARE:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0x10

    const/16 v2, 0x4e3b

    const-string v3, "STOPRECORD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->STOPRECORD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0x11

    const/16 v2, 0x4e3c

    const-string v3, "PAUSERECORD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->PAUSERECORD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0x12

    const/16 v2, 0x4e3d

    const-string v3, "RESUMERECORD"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->RESUMERECORD:Lnet/rtccloud/sdk/Call$Control;

    new-instance v0, Lnet/rtccloud/sdk/Call$Control;

    const/16 v1, 0x13

    const/16 v2, 0x4e3e

    const-string v3, "BOOKMARK"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Call$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->BOOKMARK:Lnet/rtccloud/sdk/Call$Control;

    invoke-static {}, Lnet/rtccloud/sdk/Call$Control;->$values()[Lnet/rtccloud/sdk/Call$Control;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Call$Control;->$VALUES:[Lnet/rtccloud/sdk/Call$Control;

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

    iput p3, p0, Lnet/rtccloud/sdk/Call$Control;->value:I

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/Call$Control;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/Call$Control;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$Control;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Call$Control;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Call$Control;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Call$Control;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Call$Control;->$VALUES:[Lnet/rtccloud/sdk/Call$Control;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Call$Control;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Call$Control;

    return-object v0
.end method
