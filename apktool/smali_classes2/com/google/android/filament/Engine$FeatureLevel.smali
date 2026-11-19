.class public final enum Lcom/google/android/filament/Engine$FeatureLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$FeatureLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$FeatureLevel;

.field public static final enum FEATURE_LEVEL_0:Lcom/google/android/filament/Engine$FeatureLevel;

.field public static final enum FEATURE_LEVEL_1:Lcom/google/android/filament/Engine$FeatureLevel;

.field public static final enum FEATURE_LEVEL_2:Lcom/google/android/filament/Engine$FeatureLevel;

.field public static final enum FEATURE_LEVEL_3:Lcom/google/android/filament/Engine$FeatureLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/filament/Engine$FeatureLevel;

    const-string v1, "FEATURE_LEVEL_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$FeatureLevel;->FEATURE_LEVEL_0:Lcom/google/android/filament/Engine$FeatureLevel;

    new-instance v1, Lcom/google/android/filament/Engine$FeatureLevel;

    const-string v2, "FEATURE_LEVEL_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Engine$FeatureLevel;->FEATURE_LEVEL_1:Lcom/google/android/filament/Engine$FeatureLevel;

    new-instance v2, Lcom/google/android/filament/Engine$FeatureLevel;

    const-string v3, "FEATURE_LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/Engine$FeatureLevel;->FEATURE_LEVEL_2:Lcom/google/android/filament/Engine$FeatureLevel;

    new-instance v3, Lcom/google/android/filament/Engine$FeatureLevel;

    const-string v4, "FEATURE_LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Engine$FeatureLevel;->FEATURE_LEVEL_3:Lcom/google/android/filament/Engine$FeatureLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/Engine$FeatureLevel;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$FeatureLevel;->$VALUES:[Lcom/google/android/filament/Engine$FeatureLevel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$FeatureLevel;
    .locals 1

    const-class v0, Lcom/google/android/filament/Engine$FeatureLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$FeatureLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$FeatureLevel;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$FeatureLevel;->$VALUES:[Lcom/google/android/filament/Engine$FeatureLevel;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$FeatureLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$FeatureLevel;

    return-object v0
.end method
