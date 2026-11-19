.class public final enum Lcom/google/android/filament/utils/RotationsOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/RotationsOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/android/filament/utils/RotationsOrder;",
        "",
        "Lcom/google/android/filament/utils/VectorComponent;",
        "yaw",
        "Lcom/google/android/filament/utils/VectorComponent;",
        "c",
        "()Lcom/google/android/filament/utils/VectorComponent;",
        "pitch",
        "a",
        "roll",
        "b",
        "XYZ",
        "XZY",
        "YXZ",
        "YZX",
        "ZXY",
        "ZYX",
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

.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/RotationsOrder;

.field public static final enum XYZ:Lcom/google/android/filament/utils/RotationsOrder;

.field public static final enum XZY:Lcom/google/android/filament/utils/RotationsOrder;

.field public static final enum YXZ:Lcom/google/android/filament/utils/RotationsOrder;

.field public static final enum YZX:Lcom/google/android/filament/utils/RotationsOrder;

.field public static final enum ZXY:Lcom/google/android/filament/utils/RotationsOrder;

.field public static final enum ZYX:Lcom/google/android/filament/utils/RotationsOrder;


# instance fields
.field private final pitch:Lcom/google/android/filament/utils/VectorComponent;

.field private final roll:Lcom/google/android/filament/utils/VectorComponent;

.field private final yaw:Lcom/google/android/filament/utils/VectorComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/android/filament/utils/RotationsOrder;

    sget-object v5, Lcom/google/android/filament/utils/VectorComponent;->X:Lcom/google/android/filament/utils/VectorComponent;

    sget-object v4, Lcom/google/android/filament/utils/VectorComponent;->Y:Lcom/google/android/filament/utils/VectorComponent;

    sget-object v6, Lcom/google/android/filament/utils/VectorComponent;->Z:Lcom/google/android/filament/utils/VectorComponent;

    const-string v1, "XYZ"

    const/4 v2, 0x0

    move-object v3, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/utils/RotationsOrder;-><init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V

    move-object v5, v3

    sput-object v0, Lcom/google/android/filament/utils/RotationsOrder;->XYZ:Lcom/google/android/filament/utils/RotationsOrder;

    new-instance v1, Lcom/google/android/filament/utils/RotationsOrder;

    const-string v2, "XZY"

    const/4 v3, 0x1

    move-object v11, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/RotationsOrder;-><init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v1

    sput-object v7, Lcom/google/android/filament/utils/RotationsOrder;->XZY:Lcom/google/android/filament/utils/RotationsOrder;

    new-instance v1, Lcom/google/android/filament/utils/RotationsOrder;

    const-string v2, "YXZ"

    const/4 v3, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/RotationsOrder;-><init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V

    move-object v8, v1

    sput-object v8, Lcom/google/android/filament/utils/RotationsOrder;->YXZ:Lcom/google/android/filament/utils/RotationsOrder;

    new-instance v1, Lcom/google/android/filament/utils/RotationsOrder;

    const-string v2, "YZX"

    const/4 v3, 0x3

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/RotationsOrder;-><init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    move-object v9, v1

    sput-object v9, Lcom/google/android/filament/utils/RotationsOrder;->YZX:Lcom/google/android/filament/utils/RotationsOrder;

    new-instance v1, Lcom/google/android/filament/utils/RotationsOrder;

    const-string v2, "ZXY"

    const/4 v3, 0x4

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/RotationsOrder;-><init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V

    move-object v10, v6

    move-object v6, v4

    move-object v4, v10

    move-object v10, v1

    sput-object v10, Lcom/google/android/filament/utils/RotationsOrder;->ZXY:Lcom/google/android/filament/utils/RotationsOrder;

    new-instance v1, Lcom/google/android/filament/utils/RotationsOrder;

    const-string v2, "ZYX"

    const/4 v3, 0x5

    move-object v11, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/filament/utils/RotationsOrder;-><init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V

    sput-object v1, Lcom/google/android/filament/utils/RotationsOrder;->ZYX:Lcom/google/android/filament/utils/RotationsOrder;

    move-object v5, v1

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/utils/RotationsOrder;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/RotationsOrder;->$VALUES:[Lcom/google/android/filament/utils/RotationsOrder;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/RotationsOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;Lcom/google/android/filament/utils/VectorComponent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/filament/utils/RotationsOrder;->yaw:Lcom/google/android/filament/utils/VectorComponent;

    iput-object p4, p0, Lcom/google/android/filament/utils/RotationsOrder;->pitch:Lcom/google/android/filament/utils/VectorComponent;

    iput-object p5, p0, Lcom/google/android/filament/utils/RotationsOrder;->roll:Lcom/google/android/filament/utils/VectorComponent;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/RotationsOrder;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/RotationsOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/RotationsOrder;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/RotationsOrder;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/RotationsOrder;->$VALUES:[Lcom/google/android/filament/utils/RotationsOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/RotationsOrder;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/filament/utils/VectorComponent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/RotationsOrder;->pitch:Lcom/google/android/filament/utils/VectorComponent;

    return-object p0
.end method

.method public final b()Lcom/google/android/filament/utils/VectorComponent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/RotationsOrder;->roll:Lcom/google/android/filament/utils/VectorComponent;

    return-object p0
.end method

.method public final c()Lcom/google/android/filament/utils/VectorComponent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/utils/RotationsOrder;->yaw:Lcom/google/android/filament/utils/VectorComponent;

    return-object p0
.end method
