.class public final enum Lnet/rtccloud/sdk/User$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/User$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/User$Status;

.field public static final enum NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

.field public static final enum REGISTERED:Lnet/rtccloud/sdk/User$Status;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/User$Status;
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    sget-object v1, Lnet/rtccloud/sdk/User$Status;->NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

    filled-new-array {v0, v1}, [Lnet/rtccloud/sdk/User$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/User$Status;

    const-string v1, "REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/User$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    new-instance v0, Lnet/rtccloud/sdk/User$Status;

    const-string v1, "NOT_REGISTERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/User$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/User$Status;->NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {}, Lnet/rtccloud/sdk/User$Status;->$values()[Lnet/rtccloud/sdk/User$Status;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/User$Status;->$VALUES:[Lnet/rtccloud/sdk/User$Status;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Status;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/User$Status;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/User$Status;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/User$Status;->$VALUES:[Lnet/rtccloud/sdk/User$Status;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/User$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/User$Status;

    return-object v0
.end method
