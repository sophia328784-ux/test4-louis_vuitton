.class public final enum Lcom/dynatrace/agent/userinteraction/model/GestureIntention;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/userinteraction/model/GestureIntention;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GestureIntention;",
        "",
        "",
        "jsonValue",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "UP",
        "DOWN",
        "LEFT",
        "RIGHT",
        "COMPLEX",
        "com.dynatrace.agent_release"
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

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

.field public static final enum COMPLEX:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

.field public static final enum DOWN:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

.field public static final enum LEFT:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

.field public static final enum RIGHT:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

.field public static final enum UP:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;


# instance fields
.field private final jsonValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    const/4 v1, 0x0

    const-string v2, "up"

    const-string v3, "UP"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->UP:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    new-instance v1, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    const/4 v2, 0x1

    const-string v3, "down"

    const-string v4, "DOWN"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->DOWN:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    new-instance v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    const/4 v3, 0x2

    const-string v4, "left"

    const-string v5, "LEFT"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->LEFT:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    new-instance v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    const/4 v4, 0x3

    const-string v5, "right"

    const-string v6, "RIGHT"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->RIGHT:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    new-instance v4, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    const/4 v5, 0x4

    const-string v6, "complex"

    const-string v7, "COMPLEX"

    invoke-direct {v4, v7, v5, v6}, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->COMPLEX:Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->$VALUES:[Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->jsonValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/userinteraction/model/GestureIntention;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/userinteraction/model/GestureIntention;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->$VALUES:[Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/userinteraction/model/GestureIntention;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/GestureIntention;->jsonValue:Ljava/lang/String;

    return-object p0
.end method
