.class public final enum Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PupilQualityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceAreaQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

.field public static final enum OUT_OF_BOUNDARY:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

.field public static final enum TOO_LARGE:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

.field public static final enum TOO_SMALL:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

.field public static final enum UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    new-instance v1, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    const-string v2, "TOO_SMALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->TOO_SMALL:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    new-instance v2, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    const-string v3, "TOO_LARGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->TOO_LARGE:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    new-instance v3, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    const-string v4, "OUT_OF_BOUNDARY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->OUT_OF_BOUNDARY:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    new-instance v4, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    const-string v5, "GOOD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceAreaQuality;

    return-object v0
.end method
