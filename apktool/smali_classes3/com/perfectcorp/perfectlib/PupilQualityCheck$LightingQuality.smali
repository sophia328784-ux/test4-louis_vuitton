.class public final enum Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PupilQualityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightingQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DARK:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

.field public static final enum GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

.field public static final enum NORMAL:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

.field public static final enum UNEVEN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

.field public static final enum UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    new-instance v1, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    const-string v2, "DARK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->DARK:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    new-instance v2, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    const-string v3, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->NORMAL:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    new-instance v3, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    const-string v4, "GOOD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    new-instance v4, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    const-string v5, "UNEVEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->UNEVEN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$LightingQuality;

    return-object v0
.end method
