.class public final enum Lcom/perfectcorp/perfectlib/PerfectLib$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PerfectLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/PerfectLib$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INITIALIZED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

.field public static final enum INITIALIZING:Lcom/perfectcorp/perfectlib/PerfectLib$State;

.field public static final enum RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

.field public static final enum RELEASING:Lcom/perfectcorp/perfectlib/PerfectLib$State;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/PerfectLib$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;->INITIALIZED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    new-instance v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;

    const-string v2, "INITIALIZING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;->INITIALIZING:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectLib$State;

    const-string v3, "RELEASED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    new-instance v3, Lcom/perfectcorp/perfectlib/PerfectLib$State;

    const-string v4, "RELEASING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASING:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/perfectcorp/perfectlib/PerfectLib$State;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;->a:[Lcom/perfectcorp/perfectlib/PerfectLib$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PerfectLib$State;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectLib$State;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/PerfectLib$State;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;->a:[Lcom/perfectcorp/perfectlib/PerfectLib$State;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/PerfectLib$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/PerfectLib$State;

    return-object v0
.end method
