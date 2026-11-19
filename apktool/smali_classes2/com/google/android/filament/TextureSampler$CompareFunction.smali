.class public final enum Lcom/google/android/filament/TextureSampler$CompareFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$CompareFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum ALWAYS:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum GREATER:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum LESS:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum NEVER:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum NOT_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v1, "LESS_EQUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v1, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v2, "GREATER_EQUAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v2, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v3, "LESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v3, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v4, "GREATER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/TextureSampler$CompareFunction;->GREATER:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v4, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v5, "EQUAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/filament/TextureSampler$CompareFunction;->EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v5, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v6, "NOT_EQUAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/filament/TextureSampler$CompareFunction;->NOT_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v6, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v7, "ALWAYS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/filament/TextureSampler$CompareFunction;->ALWAYS:Lcom/google/android/filament/TextureSampler$CompareFunction;

    new-instance v7, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const-string v8, "NEVER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/filament/TextureSampler$CompareFunction;->NEVER:Lcom/google/android/filament/TextureSampler$CompareFunction;

    filled-new-array/range {v0 .. v7}, [Lcom/google/android/filament/TextureSampler$CompareFunction;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->$VALUES:[Lcom/google/android/filament/TextureSampler$CompareFunction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$CompareFunction;
    .locals 1

    const-class v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$CompareFunction;
    .locals 1

    sget-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->$VALUES:[Lcom/google/android/filament/TextureSampler$CompareFunction;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$CompareFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$CompareFunction;

    return-object v0
.end method
