.class public final enum Lnet/rtccloud/sdk/Call$EndReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Call$EndReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Call$EndReason;

.field public static final enum DEAD_PARTY:Lnet/rtccloud/sdk/Call$EndReason;

.field public static final enum LOCAL:Lnet/rtccloud/sdk/Call$EndReason;

.field public static final enum REMOTE:Lnet/rtccloud/sdk/Call$EndReason;

.field public static final enum UNEXPECTED:Lnet/rtccloud/sdk/Call$EndReason;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Call$EndReason;
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/Call$EndReason;->LOCAL:Lnet/rtccloud/sdk/Call$EndReason;

    sget-object v1, Lnet/rtccloud/sdk/Call$EndReason;->REMOTE:Lnet/rtccloud/sdk/Call$EndReason;

    sget-object v2, Lnet/rtccloud/sdk/Call$EndReason;->DEAD_PARTY:Lnet/rtccloud/sdk/Call$EndReason;

    sget-object v3, Lnet/rtccloud/sdk/Call$EndReason;->UNEXPECTED:Lnet/rtccloud/sdk/Call$EndReason;

    filled-new-array {v0, v1, v2, v3}, [Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/Call$EndReason;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$EndReason;->LOCAL:Lnet/rtccloud/sdk/Call$EndReason;

    new-instance v0, Lnet/rtccloud/sdk/Call$EndReason;

    const-string v1, "REMOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$EndReason;->REMOTE:Lnet/rtccloud/sdk/Call$EndReason;

    new-instance v0, Lnet/rtccloud/sdk/Call$EndReason;

    const-string v1, "DEAD_PARTY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$EndReason;->DEAD_PARTY:Lnet/rtccloud/sdk/Call$EndReason;

    new-instance v0, Lnet/rtccloud/sdk/Call$EndReason;

    const-string v1, "UNEXPECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$EndReason;->UNEXPECTED:Lnet/rtccloud/sdk/Call$EndReason;

    invoke-static {}, Lnet/rtccloud/sdk/Call$EndReason;->$values()[Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Call$EndReason;->$VALUES:[Lnet/rtccloud/sdk/Call$EndReason;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$EndReason;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Call$EndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Call$EndReason;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Call$EndReason;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Call$EndReason;->$VALUES:[Lnet/rtccloud/sdk/Call$EndReason;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Call$EndReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Call$EndReason;

    return-object v0
.end method
