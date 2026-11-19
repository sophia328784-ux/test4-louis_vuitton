.class public final enum Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;",
        "",
        "",
        "size",
        "F",
        "c",
        "()F",
        "previousSize",
        "b",
        "nextSize",
        "a",
        "Invisible",
        "Mini",
        "Small",
        "Normal",
        "Current",
        "system"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

.field public static final enum Current:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

.field public static final enum Invisible:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

.field public static final enum Mini:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

.field public static final enum Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

.field public static final enum Small:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;


# instance fields
.field private final nextSize:F

.field private final previousSize:F

.field private final size:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const-string v1, "Invisible"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Invisible:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    new-instance v1, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    const-string v2, "Mini"

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Mini:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const-string v3, "Small"

    const/4 v4, 0x2

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Small:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    new-instance v3, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const-string v4, "Normal"

    const/4 v5, 0x3

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v3, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Normal:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    new-instance v4, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    const/high16 v9, 0x40c00000    # 6.0f

    const-string v5, "Current"

    const/4 v6, 0x4

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v4, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->Current:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->$VALUES:[Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->size:F

    iput p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->previousSize:F

    iput p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->nextSize:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;
    .locals 1

    const-class v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;
    .locals 1

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->$VALUES:[Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->nextSize:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->previousSize:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState$State;->size:F

    return p0
.end method
