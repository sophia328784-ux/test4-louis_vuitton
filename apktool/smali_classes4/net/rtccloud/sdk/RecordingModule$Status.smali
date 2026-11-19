.class public final enum Lnet/rtccloud/sdk/RecordingModule$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RecordingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/RecordingModule$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/RecordingModule$Status;

.field public static final enum PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

.field public static final enum RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

.field public static final enum STOPPED:Lnet/rtccloud/sdk/RecordingModule$Status;

.field public static final enum UNDEFINED:Lnet/rtccloud/sdk/RecordingModule$Status;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/RecordingModule$Status;
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->UNDEFINED:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v1, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v2, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v3, Lnet/rtccloud/sdk/RecordingModule$Status;->STOPPED:Lnet/rtccloud/sdk/RecordingModule$Status;

    filled-new-array {v0, v1, v2, v3}, [Lnet/rtccloud/sdk/RecordingModule$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Status;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/RecordingModule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->UNDEFINED:Lnet/rtccloud/sdk/RecordingModule$Status;

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Status;

    const-string v1, "RECORDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/RecordingModule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/RecordingModule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Status;

    const-string v1, "STOPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/RecordingModule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->STOPPED:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-static {}, Lnet/rtccloud/sdk/RecordingModule$Status;->$values()[Lnet/rtccloud/sdk/RecordingModule$Status;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->$VALUES:[Lnet/rtccloud/sdk/RecordingModule$Status;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/RecordingModule$Status;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/RecordingModule$Status;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/RecordingModule$Status;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->$VALUES:[Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/RecordingModule$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/RecordingModule$Status;

    return-object v0
.end method
