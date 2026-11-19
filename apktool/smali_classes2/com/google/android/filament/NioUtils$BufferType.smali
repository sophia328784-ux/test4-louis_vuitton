.class final enum Lcom/google/android/filament/NioUtils$BufferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/NioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/NioUtils$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum BYTE:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum CHAR:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum DOUBLE:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum FLOAT:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum INT:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum LONG:Lcom/google/android/filament/NioUtils$BufferType;

.field public static final enum SHORT:Lcom/google/android/filament/NioUtils$BufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->BYTE:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v1, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v2, "CHAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/NioUtils$BufferType;->CHAR:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v2, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v3, "SHORT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/NioUtils$BufferType;->SHORT:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v3, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v4, "INT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/NioUtils$BufferType;->INT:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v4, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v5, "LONG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/NioUtils$BufferType;->LONG:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v5, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v6, "FLOAT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/NioUtils$BufferType;->FLOAT:Lcom/google/android/filament/NioUtils$BufferType;

    new-instance v6, Lcom/google/android/filament/NioUtils$BufferType;

    const-string v7, "DOUBLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/filament/NioUtils$BufferType;->DOUBLE:Lcom/google/android/filament/NioUtils$BufferType;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/filament/NioUtils$BufferType;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/NioUtils$BufferType;->$VALUES:[Lcom/google/android/filament/NioUtils$BufferType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/NioUtils$BufferType;
    .locals 1

    const-class v0, Lcom/google/android/filament/NioUtils$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/NioUtils$BufferType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/NioUtils$BufferType;
    .locals 1

    sget-object v0, Lcom/google/android/filament/NioUtils$BufferType;->$VALUES:[Lcom/google/android/filament/NioUtils$BufferType;

    invoke-virtual {v0}, [Lcom/google/android/filament/NioUtils$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/NioUtils$BufferType;

    return-object v0
.end method
