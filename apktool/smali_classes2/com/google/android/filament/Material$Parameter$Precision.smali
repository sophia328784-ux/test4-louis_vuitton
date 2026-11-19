.class public final enum Lcom/google/android/filament/Material$Parameter$Precision;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material$Parameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Precision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$Parameter$Precision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$Parameter$Precision;

.field public static final enum DEFAULT:Lcom/google/android/filament/Material$Parameter$Precision;

.field public static final enum HIGH:Lcom/google/android/filament/Material$Parameter$Precision;

.field public static final enum LOW:Lcom/google/android/filament/Material$Parameter$Precision;

.field public static final enum MEDIUM:Lcom/google/android/filament/Material$Parameter$Precision;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/filament/Material$Parameter$Precision;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Precision;->LOW:Lcom/google/android/filament/Material$Parameter$Precision;

    new-instance v1, Lcom/google/android/filament/Material$Parameter$Precision;

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/Material$Parameter$Precision;->MEDIUM:Lcom/google/android/filament/Material$Parameter$Precision;

    new-instance v2, Lcom/google/android/filament/Material$Parameter$Precision;

    const-string v3, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/Material$Parameter$Precision;->HIGH:Lcom/google/android/filament/Material$Parameter$Precision;

    new-instance v3, Lcom/google/android/filament/Material$Parameter$Precision;

    const-string v4, "DEFAULT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/Material$Parameter$Precision;->DEFAULT:Lcom/google/android/filament/Material$Parameter$Precision;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/Material$Parameter$Precision;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$Parameter$Precision;->$VALUES:[Lcom/google/android/filament/Material$Parameter$Precision;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$Parameter$Precision;
    .locals 1

    const-class v0, Lcom/google/android/filament/Material$Parameter$Precision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$Parameter$Precision;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$Parameter$Precision;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Material$Parameter$Precision;->$VALUES:[Lcom/google/android/filament/Material$Parameter$Precision;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$Parameter$Precision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$Parameter$Precision;

    return-object v0
.end method
