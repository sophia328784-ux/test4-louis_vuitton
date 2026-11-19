.class public final enum Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/session/datasource/reference/v3/CustomizationName;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sightcall/session/datasource/reference/v3/CustomizationName;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "AcdExternal",
        "PluginShareOverlayDisabled",
        "RtccLocalUdpDisabled",
        "RtccUsapTurnDisabled",
        "SslPlugin",
        "session_release"
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

.field private static final synthetic $VALUES:[Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

.field public static final enum AcdExternal:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acdExternal"
    .end annotation
.end field

.field public static final enum PluginShareOverlayDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pluginShareOverlayDisabled"
    .end annotation
.end field

.field public static final enum RtccLocalUdpDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtccLocaludpDisabled"
    .end annotation
.end field

.field public static final enum RtccUsapTurnDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtccUsapturnDisabled"
    .end annotation
.end field

.field public static final enum SslPlugin:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sslPlugin"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .locals 5

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->AcdExternal:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    sget-object v1, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->PluginShareOverlayDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    sget-object v2, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->RtccLocalUdpDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->RtccUsapTurnDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->SslPlugin:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    const-string v1, "AcdExternal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->AcdExternal:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    const-string v1, "PluginShareOverlayDisabled"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->PluginShareOverlayDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    const-string v1, "RtccLocalUdpDisabled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->RtccLocalUdpDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    const-string v1, "RtccUsapTurnDisabled"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->RtccUsapTurnDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    const-string v1, "SslPlugin"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->SslPlugin:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->$values()[Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    move-result-object v0

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->$VALUES:[Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/sightcall/session/datasource/reference/v3/CustomizationName;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .locals 1

    const-class v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/session/datasource/reference/v3/CustomizationName;
    .locals 1

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->$VALUES:[Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    return-object v0
.end method
