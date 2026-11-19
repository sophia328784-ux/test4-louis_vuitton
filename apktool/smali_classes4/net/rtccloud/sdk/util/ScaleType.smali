.class public final enum Lnet/rtccloud/sdk/util/ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/util/ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/util/ScaleType;

.field public static final enum CROP:Lnet/rtccloud/sdk/util/ScaleType;

.field public static final enum FILL:Lnet/rtccloud/sdk/util/ScaleType;

.field public static final enum FIT:Lnet/rtccloud/sdk/util/ScaleType;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/util/ScaleType;
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    sget-object v1, Lnet/rtccloud/sdk/util/ScaleType;->CROP:Lnet/rtccloud/sdk/util/ScaleType;

    sget-object v2, Lnet/rtccloud/sdk/util/ScaleType;->FILL:Lnet/rtccloud/sdk/util/ScaleType;

    filled-new-array {v0, v1, v2}, [Lnet/rtccloud/sdk/util/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/util/ScaleType;

    const-string v1, "FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/util/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance v0, Lnet/rtccloud/sdk/util/ScaleType;

    const-string v1, "CROP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/util/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/util/ScaleType;->CROP:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance v0, Lnet/rtccloud/sdk/util/ScaleType;

    const-string v1, "FILL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/util/ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/util/ScaleType;->FILL:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-static {}, Lnet/rtccloud/sdk/util/ScaleType;->$values()[Lnet/rtccloud/sdk/util/ScaleType;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/util/ScaleType;->$VALUES:[Lnet/rtccloud/sdk/util/ScaleType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/util/ScaleType;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/util/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/util/ScaleType;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/util/ScaleType;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/ScaleType;->$VALUES:[Lnet/rtccloud/sdk/util/ScaleType;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/util/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/util/ScaleType;

    return-object v0
.end method


# virtual methods
.method public next()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/util/ScaleType;->values()[Lnet/rtccloud/sdk/util/ScaleType;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    array-length v1, v0

    rem-int/2addr p0, v1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public previous()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/util/ScaleType;->values()[Lnet/rtccloud/sdk/util/ScaleType;

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
