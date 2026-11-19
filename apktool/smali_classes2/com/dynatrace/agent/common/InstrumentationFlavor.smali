.class public final enum Lcom/dynatrace/agent/common/InstrumentationFlavor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/common/InstrumentationFlavor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynatrace/agent/common/InstrumentationFlavor;",
        "",
        "",
        "protocolValue",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "PLAIN",
        "XAMARIN",
        "CORDOVA",
        "FLUTTER",
        "REACT_NATIVE",
        "JETPACK_COMPOSE",
        "MAUI",
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

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum CORDOVA:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum FLUTTER:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum JETPACK_COMPOSE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum MAUI:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum REACT_NATIVE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public static final enum XAMARIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;


# instance fields
.field private final protocolValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v1, 0x0

    const-string v2, "pl"

    const-string v3, "PLAIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    new-instance v1, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v2, 0x1

    const-string v3, "xm"

    const-string v4, "XAMARIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dynatrace/agent/common/InstrumentationFlavor;->XAMARIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    new-instance v2, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v3, 0x2

    const-string v4, "cd"

    const-string v5, "CORDOVA"

    invoke-direct {v2, v5, v3, v4}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/dynatrace/agent/common/InstrumentationFlavor;->CORDOVA:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    new-instance v3, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v4, 0x3

    const-string v5, "fl"

    const-string v6, "FLUTTER"

    invoke-direct {v3, v6, v4, v5}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dynatrace/agent/common/InstrumentationFlavor;->FLUTTER:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    new-instance v4, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v5, 0x4

    const-string v6, "rn"

    const-string v7, "REACT_NATIVE"

    invoke-direct {v4, v7, v5, v6}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/dynatrace/agent/common/InstrumentationFlavor;->REACT_NATIVE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    new-instance v5, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v6, 0x5

    const-string v7, "jc"

    const-string v8, "JETPACK_COMPOSE"

    invoke-direct {v5, v8, v6, v7}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/dynatrace/agent/common/InstrumentationFlavor;->JETPACK_COMPOSE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    new-instance v6, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const/4 v7, 0x6

    const-string v8, "ma"

    const-string v9, "MAUI"

    invoke-direct {v6, v9, v7, v8}, Lcom/dynatrace/agent/common/InstrumentationFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/dynatrace/agent/common/InstrumentationFlavor;->MAUI:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    filled-new-array/range {v0 .. v6}, [Lcom/dynatrace/agent/common/InstrumentationFlavor;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->$VALUES:[Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->protocolValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/common/InstrumentationFlavor;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/common/InstrumentationFlavor;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/common/InstrumentationFlavor;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->$VALUES:[Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/common/InstrumentationFlavor;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->protocolValue:Ljava/lang/String;

    return-object p0
.end method
