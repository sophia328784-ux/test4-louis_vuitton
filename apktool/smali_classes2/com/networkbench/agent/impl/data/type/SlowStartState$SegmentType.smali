.class public final enum Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/data/type/SlowStartState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SegmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

.field public static final enum BITMAP:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

.field public static final enum CUSTOM:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

.field public static final enum DATABASE:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

.field public static final enum JSON:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

.field public static final enum NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

.field public static final enum OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    new-instance v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    const-string v2, "NETWORK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    new-instance v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    const-string v3, "JSON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->JSON:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    new-instance v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    const-string v4, "DATABASE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->DATABASE:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    new-instance v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    const-string v5, "BITMAP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->BITMAP:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    new-instance v5, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    const/4 v6, 0x5

    const/16 v7, 0x9

    const-string v8, "CUSTOM"

    invoke-direct {v5, v8, v6, v7}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->CUSTOM:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    filled-new-array/range {v0 .. v5}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->id:I

    return p0
.end method
