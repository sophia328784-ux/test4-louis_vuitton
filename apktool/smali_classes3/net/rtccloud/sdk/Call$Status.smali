.class public final enum Lnet/rtccloud/sdk/Call$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Call$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Call$Status;

.field public static final enum ACTIVE:Lnet/rtccloud/sdk/Call$Status;

.field public static final enum CREATING:Lnet/rtccloud/sdk/Call$Status;

.field public static final enum ENDED:Lnet/rtccloud/sdk/Call$Status;

.field public static final enum PROCEEDING:Lnet/rtccloud/sdk/Call$Status;

.field public static final enum RINGING:Lnet/rtccloud/sdk/Call$Status;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Call$Status;
    .locals 5

    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->PROCEEDING:Lnet/rtccloud/sdk/Call$Status;

    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    sget-object v4, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/Call$Status;

    const-string v1, "CREATING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    new-instance v0, Lnet/rtccloud/sdk/Call$Status;

    const-string v1, "RINGING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    new-instance v0, Lnet/rtccloud/sdk/Call$Status;

    const-string v1, "PROCEEDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Status;->PROCEEDING:Lnet/rtccloud/sdk/Call$Status;

    new-instance v0, Lnet/rtccloud/sdk/Call$Status;

    const-string v1, "ACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    new-instance v0, Lnet/rtccloud/sdk/Call$Status;

    const-string v1, "ENDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {}, Lnet/rtccloud/sdk/Call$Status;->$values()[Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Call$Status;->$VALUES:[Lnet/rtccloud/sdk/Call$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$Status;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Call$Status;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Call$Status;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->$VALUES:[Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Call$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Call$Status;

    return-object v0
.end method
