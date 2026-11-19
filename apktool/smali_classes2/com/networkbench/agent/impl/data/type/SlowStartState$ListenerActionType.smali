.class public final enum Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/data/type/SlowStartState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListenerActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum BackBtnPress:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum Clicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum CustomAction:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum ItemClicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum ItemSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum LongClicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum MenuItemClick:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum OptionsItemSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum PageSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum TabChanged:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

.field public static final enum View:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;


# instance fields
.field public final order:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v1, "View"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->View:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v2, "Clicked"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->Clicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v3, "ItemClicked"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->ItemClicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v4, "ItemSelected"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->ItemSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v5, "MenuItemClick"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->MenuItemClick:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v5, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v6, "OptionsItemSelected"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->OptionsItemSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v6, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v7, "PageSelected"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->PageSelected:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v7, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v8, "CustomAction"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->CustomAction:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v8, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v9, "LongClicked"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->LongClicked:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v9, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v10, "BackBtnPress"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->BackBtnPress:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    new-instance v10, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    const-string v11, "TabChanged"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->TabChanged:Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    filled-new-array/range {v0 .. v10}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

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

    iput p3, p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->order:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->$VALUES:[Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;

    return-object v0
.end method
