.class public final enum Lnet/rtccloud/sdk/AudioModule$AudioRoute;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AudioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioRoute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/AudioModule$AudioRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/AudioModule$AudioRoute;

.field public static final enum HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

.field public static final enum SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/AudioModule$AudioRoute;
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    sget-object v1, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    filled-new-array {v0, v1}, [Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    const-string v1, "SPEAKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/AudioModule$AudioRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    new-instance v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    const-string v1, "HEADSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/AudioModule$AudioRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    invoke-static {}, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->$values()[Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->$VALUES:[Lnet/rtccloud/sdk/AudioModule$AudioRoute;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/AudioModule$AudioRoute;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/AudioModule$AudioRoute;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->$VALUES:[Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/AudioModule$AudioRoute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    return-object v0
.end method


# virtual methods
.method public next()Lnet/rtccloud/sdk/AudioModule$AudioRoute;
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->values()[Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    array-length v1, v0

    rem-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method
