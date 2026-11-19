.class public final enum Lnet/rtccloud/sdk/ScreenshareModule$Profile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/ScreenshareModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/ScreenshareModule$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field public static final enum HD_1080:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field public static final enum HD_720:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field public static final enum QVGA:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field public static final enum UHD:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

.field public static final enum VGA:Lnet/rtccloud/sdk/ScreenshareModule$Profile;


# instance fields
.field public final high:I

.field public final low:I


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    .locals 5

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->QVGA:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    sget-object v1, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->VGA:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    sget-object v2, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->HD_720:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    sget-object v3, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->HD_1080:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    sget-object v4, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->UHD:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    const-string v3, "QVGA"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->QVGA:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    new-instance v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    const-string v3, "VGA"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->VGA:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    new-instance v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const-string v3, "HD_720"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->HD_720:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    new-instance v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    const/16 v1, 0x780

    const/16 v2, 0x438

    const-string v3, "HD_1080"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->HD_1080:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    new-instance v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    const-string v3, "UHD"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->UHD:Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    invoke-static {}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->$values()[Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->$VALUES:[Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->high:I

    iput p4, p0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->low:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->$VALUES:[Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/ScreenshareModule$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    return-object v0
.end method


# virtual methods
.method public next()Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->values()[Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    array-length v1, v0

    rem-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public previous()Lnet/rtccloud/sdk/ScreenshareModule$Profile;
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/ScreenshareModule$Profile;->values()[Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    array-length v1, v0

    rem-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method
