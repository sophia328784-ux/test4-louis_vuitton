.class public final enum Lcom/google/android/filament/Texture$Sampler;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sampler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$Sampler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_3D:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

.field public static final enum SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/filament/Texture$Sampler;

    const-string v1, "SAMPLER_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    new-instance v1, Lcom/google/android/filament/Texture$Sampler;

    const-string v2, "SAMPLER_2D_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/Texture$Sampler;

    new-instance v2, Lcom/google/android/filament/Texture$Sampler;

    const-string v3, "SAMPLER_CUBEMAP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

    new-instance v3, Lcom/google/android/filament/Texture$Sampler;

    const-string v4, "SAMPLER_EXTERNAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;

    new-instance v4, Lcom/google/android/filament/Texture$Sampler;

    const-string v5, "SAMPLER_3D"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_3D:Lcom/google/android/filament/Texture$Sampler;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/filament/Texture$Sampler;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture$Sampler;->$VALUES:[Lcom/google/android/filament/Texture$Sampler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$Sampler;
    .locals 1

    const-class v0, Lcom/google/android/filament/Texture$Sampler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$Sampler;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$Sampler;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$Sampler;->$VALUES:[Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$Sampler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$Sampler;

    return-object v0
.end method
