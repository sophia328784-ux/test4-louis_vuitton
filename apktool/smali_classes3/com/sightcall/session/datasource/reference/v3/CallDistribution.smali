.class public final enum Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/session/datasource/reference/v3/CallDistribution;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sightcall/session/datasource/reference/v3/CallDistribution;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Acd",
        "Direct",
        "Code",
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

.field private static final synthetic $VALUES:[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

.field public static final enum Acd:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acd"
    .end annotation
.end field

.field public static final enum Code:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field public static final enum Direct:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direct"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
    .locals 3

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Acd:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    sget-object v1, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Direct:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    sget-object v2, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Code:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    const-string v1, "Acd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Acd:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    const-string v1, "Direct"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Direct:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    const-string v1, "Code"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Code:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->$values()[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    move-result-object v0

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->$VALUES:[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/sightcall/session/datasource/reference/v3/CallDistribution;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
    .locals 1

    const-class v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;
    .locals 1

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->$VALUES:[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    return-object v0
.end method
