.class public final enum Lcom/google/android/filament/MaterialInstance$FloatElement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/MaterialInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/MaterialInstance$FloatElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT2:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum MAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

.field public static final enum MAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT:Lcom/google/android/filament/MaterialInstance$FloatElement;

    new-instance v1, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v2, "FLOAT2"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT2:Lcom/google/android/filament/MaterialInstance$FloatElement;

    new-instance v2, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v3, "FLOAT3"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

    new-instance v3, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v4, "FLOAT4"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    new-instance v4, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v5, "MAT3"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/MaterialInstance$FloatElement;->MAT3:Lcom/google/android/filament/MaterialInstance$FloatElement;

    new-instance v5, Lcom/google/android/filament/MaterialInstance$FloatElement;

    const-string v6, "MAT4"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/MaterialInstance$FloatElement;->MAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/MaterialInstance$FloatElement;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$FloatElement;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance$FloatElement;
    .locals 1

    const-class v0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/MaterialInstance$FloatElement;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/MaterialInstance$FloatElement;
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$FloatElement;->$VALUES:[Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-virtual {v0}, [Lcom/google/android/filament/MaterialInstance$FloatElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/MaterialInstance$FloatElement;

    return-object v0
.end method
