.class public final enum Lcom/google/android/filament/TextureSampler$WrapMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$WrapMode;

.field public static final enum CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

.field public static final enum MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

.field public static final enum REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/filament/TextureSampler$WrapMode;

    const-string v1, "CLAMP_TO_EDGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    new-instance v1, Lcom/google/android/filament/TextureSampler$WrapMode;

    const-string v2, "REPEAT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/TextureSampler$WrapMode;->REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    new-instance v2, Lcom/google/android/filament/TextureSampler$WrapMode;

    const-string v3, "MIRRORED_REPEAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/TextureSampler$WrapMode;->MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/TextureSampler$WrapMode;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->$VALUES:[Lcom/google/android/filament/TextureSampler$WrapMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 1

    const-class v0, Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$WrapMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 1

    sget-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->$VALUES:[Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$WrapMode;

    return-object v0
.end method
