.class public final enum Lcom/google/android/filament/Engine$Backend;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Backend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$Backend;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$Backend;

.field public static final enum DEFAULT:Lcom/google/android/filament/Engine$Backend;

.field public static final enum METAL:Lcom/google/android/filament/Engine$Backend;

.field public static final enum NOOP:Lcom/google/android/filament/Engine$Backend;

.field public static final enum OPENGL:Lcom/google/android/filament/Engine$Backend;

.field public static final enum VULKAN:Lcom/google/android/filament/Engine$Backend;

.field public static final enum WEBGPU:Lcom/google/android/filament/Engine$Backend;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/filament/Engine$Backend;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->DEFAULT:Lcom/google/android/filament/Engine$Backend;

    new-instance v1, Lcom/google/android/filament/Engine$Backend;

    const-string v2, "OPENGL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Engine$Backend;->OPENGL:Lcom/google/android/filament/Engine$Backend;

    new-instance v2, Lcom/google/android/filament/Engine$Backend;

    const-string v3, "VULKAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/Engine$Backend;->VULKAN:Lcom/google/android/filament/Engine$Backend;

    new-instance v3, Lcom/google/android/filament/Engine$Backend;

    const-string v4, "METAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Engine$Backend;->METAL:Lcom/google/android/filament/Engine$Backend;

    new-instance v4, Lcom/google/android/filament/Engine$Backend;

    const-string v5, "WEBGPU"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/Engine$Backend;->WEBGPU:Lcom/google/android/filament/Engine$Backend;

    new-instance v5, Lcom/google/android/filament/Engine$Backend;

    const-string v6, "NOOP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/Engine$Backend;->NOOP:Lcom/google/android/filament/Engine$Backend;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/Engine$Backend;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$Backend;->$VALUES:[Lcom/google/android/filament/Engine$Backend;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$Backend;
    .locals 1

    const-class v0, Lcom/google/android/filament/Engine$Backend;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$Backend;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$Backend;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$Backend;->$VALUES:[Lcom/google/android/filament/Engine$Backend;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$Backend;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$Backend;

    return-object v0
.end method
