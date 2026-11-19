.class final enum Lnet/rtccloud/sdk/MeetingPoint$Control;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/MeetingPoint$Control;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum ACCEPT_ONE_TO_ONE:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum AUTOACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum CANCEL:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum DENY:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum HOST:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum INVITE:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum JOIN:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum JOIN_WITH_HASH:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum LIST:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum LIST2:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum LOCK:Lnet/rtccloud/sdk/MeetingPoint$Control;

.field public static final enum STOP:Lnet/rtccloud/sdk/MeetingPoint$Control;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/MeetingPoint$Control;
    .locals 14

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->HOST:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN_WITH_HASH:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Control;->ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v4, Lnet/rtccloud/sdk/MeetingPoint$Control;->DENY:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v5, Lnet/rtccloud/sdk/MeetingPoint$Control;->CANCEL:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v6, Lnet/rtccloud/sdk/MeetingPoint$Control;->STOP:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v7, Lnet/rtccloud/sdk/MeetingPoint$Control;->INVITE:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v8, Lnet/rtccloud/sdk/MeetingPoint$Control;->LOCK:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v9, Lnet/rtccloud/sdk/MeetingPoint$Control;->AUTOACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v10, Lnet/rtccloud/sdk/MeetingPoint$Control;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v11, Lnet/rtccloud/sdk/MeetingPoint$Control;->LIST:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v12, Lnet/rtccloud/sdk/MeetingPoint$Control;->LIST2:Lnet/rtccloud/sdk/MeetingPoint$Control;

    sget-object v13, Lnet/rtccloud/sdk/MeetingPoint$Control;->ACCEPT_ONE_TO_ONE:Lnet/rtccloud/sdk/MeetingPoint$Control;

    filled-new-array/range {v0 .. v13}, [Lnet/rtccloud/sdk/MeetingPoint$Control;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "HOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->HOST:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "JOIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const/16 v1, 0x11

    const-string v2, "JOIN_WITH_HASH"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN_WITH_HASH:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "ACCEPT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "DENY"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->DENY:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->CANCEL:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "STOP"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->STOP:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "INVITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->INVITE:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "LOCK"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->LOCK:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "AUTOACCEPT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->AUTOACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "DEFAULT"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const-string v1, "LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->LIST:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const/16 v1, 0xc

    const/16 v2, 0x1a

    const-string v3, "LIST2"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->LIST2:Lnet/rtccloud/sdk/MeetingPoint$Control;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    const/16 v1, 0xd

    const/16 v2, 0x12

    const-string v3, "ACCEPT_ONE_TO_ONE"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Control;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->ACCEPT_ONE_TO_ONE:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-static {}, Lnet/rtccloud/sdk/MeetingPoint$Control;->$values()[Lnet/rtccloud/sdk/MeetingPoint$Control;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Control;

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

    iput p3, p0, Lnet/rtccloud/sdk/MeetingPoint$Control;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint$Control;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/MeetingPoint$Control;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/MeetingPoint$Control;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/MeetingPoint$Control;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/MeetingPoint$Control;

    return-object v0
.end method
