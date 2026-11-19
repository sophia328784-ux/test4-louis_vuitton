.class final enum Lcom/google/android/filament/utils/GestureDetector$Gesture;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/GestureDetector$Gesture;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/google/android/filament/utils/GestureDetector$Gesture;",
        "",
        "NONE",
        "ORBIT",
        "PAN",
        "ZOOM",
        "filament-utils-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public static final enum ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    new-instance v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v2, "ORBIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    new-instance v2, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v3, "PAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/filament/utils/GestureDetector$Gesture;->PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    new-instance v3, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    const-string v4, "ZOOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/filament/utils/GestureDetector$Gesture;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->$VALUES:[Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/GestureDetector$Gesture;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/GestureDetector$Gesture;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/GestureDetector$Gesture;->$VALUES:[Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-object v0
.end method
