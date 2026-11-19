.class public final enum Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PupilQualityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceFrontalQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

.field public static final enum GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

.field public static final enum UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->UNKNOWN:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    new-instance v1, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    const-string v2, "BAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->BAD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    new-instance v2, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    const-string v3, "GOOD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->GOOD:Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->a:[Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/PupilQualityCheck$FaceFrontalQuality;

    return-object v0
.end method
