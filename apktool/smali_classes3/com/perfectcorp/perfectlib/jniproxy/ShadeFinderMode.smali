.class public final enum Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SHADE_FINDER_DISABLE:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_LV_SHADE_DETECT:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_WITHOUT_CALIBRATION:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_WITHOUT_CALIBRATION_V2:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_WITHOUT_CALIBRATION_V3:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_WITHOUT_CALIBRATION_V4:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_WITHOUT_CALIBRATION_V4_FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field public static final enum SHADE_FINDER_WITH_CALIBRATION:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_DISABLE:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v1, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v2, "SHADE_FINDER_WITH_CALIBRATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITH_CALIBRATION:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v2, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v3, "SHADE_FINDER_WITHOUT_CALIBRATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v3, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v4, "SHADE_FINDER_WITHOUT_CALIBRATION_V2"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION_V2:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v4, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v5, "SHADE_FINDER_WITHOUT_CALIBRATION_V3"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION_V3:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v5, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v6, "SHADE_FINDER_WITHOUT_CALIBRATION_V4"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION_V4:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v6, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v7, "SHADE_FINDER_WITHOUT_CALIBRATION_V4_FACE_ATTRIBUTE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_WITHOUT_CALIBRATION_V4_FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    new-instance v7, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    const-string v8, "SHADE_FINDER_LV_SHADE_DETECT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->SHADE_FINDER_LV_SHADE_DETECT:Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    filled-new-array/range {v0 .. v7}, [Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->b:[Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "SHADE_FINDER_DISABLE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput v1, p0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->a:I

    const/4 p0, 0x1

    sput p0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode$a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    sget p1, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode$a;->a:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode$a;->a:I

    .line 13
    iput p1, p0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->b:[Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/jniproxy/ShadeFinderMode;->a:I

    return p0
.end method
