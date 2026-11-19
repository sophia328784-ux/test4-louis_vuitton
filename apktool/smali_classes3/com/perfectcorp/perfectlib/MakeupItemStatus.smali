.class public final enum Lcom/perfectcorp/perfectlib/MakeupItemStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/MakeupItemStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_FOUND:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

.field public static final enum NOT_SUPPORTED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

.field public static final enum OUTDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

.field public static final enum UPDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/MakeupItemStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    const-string v1, "UPDATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->UPDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    new-instance v1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    const-string v2, "OUTDATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->OUTDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    const-string v3, "NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_FOUND:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    new-instance v3, Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    const-string v4, "NOT_SUPPORTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_SUPPORTED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->a:[Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/MakeupItemStatus;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/MakeupItemStatus;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->a:[Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/MakeupItemStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    return-object v0
.end method
