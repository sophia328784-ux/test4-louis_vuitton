.class public final enum Lcom/sightcall/universal/internal/api/Presence;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/api/Presence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/api/Presence;

.field public static final enum AWAY:Lcom/sightcall/universal/internal/api/Presence;

.field public static final enum INCALL:Lcom/sightcall/universal/internal/api/Presence;

.field public static final enum OFFLINE:Lcom/sightcall/universal/internal/api/Presence;

.field public static final enum ONLINE:Lcom/sightcall/universal/internal/api/Presence;

.field public static final enum SIPOK:Lcom/sightcall/universal/internal/api/Presence;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/api/Presence;
    .locals 5

    sget-object v0, Lcom/sightcall/universal/internal/api/Presence;->OFFLINE:Lcom/sightcall/universal/internal/api/Presence;

    sget-object v1, Lcom/sightcall/universal/internal/api/Presence;->ONLINE:Lcom/sightcall/universal/internal/api/Presence;

    sget-object v2, Lcom/sightcall/universal/internal/api/Presence;->INCALL:Lcom/sightcall/universal/internal/api/Presence;

    sget-object v3, Lcom/sightcall/universal/internal/api/Presence;->AWAY:Lcom/sightcall/universal/internal/api/Presence;

    sget-object v4, Lcom/sightcall/universal/internal/api/Presence;->SIPOK:Lcom/sightcall/universal/internal/api/Presence;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/universal/internal/api/Presence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/api/Presence;

    const-string v1, "OFFLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/api/Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/api/Presence;->OFFLINE:Lcom/sightcall/universal/internal/api/Presence;

    new-instance v0, Lcom/sightcall/universal/internal/api/Presence;

    const-string v1, "ONLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/api/Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/api/Presence;->ONLINE:Lcom/sightcall/universal/internal/api/Presence;

    new-instance v0, Lcom/sightcall/universal/internal/api/Presence;

    const-string v1, "INCALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/api/Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/api/Presence;->INCALL:Lcom/sightcall/universal/internal/api/Presence;

    new-instance v0, Lcom/sightcall/universal/internal/api/Presence;

    const-string v1, "AWAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/api/Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/api/Presence;->AWAY:Lcom/sightcall/universal/internal/api/Presence;

    new-instance v0, Lcom/sightcall/universal/internal/api/Presence;

    const-string v1, "SIPOK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/api/Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/api/Presence;->SIPOK:Lcom/sightcall/universal/internal/api/Presence;

    invoke-static {}, Lcom/sightcall/universal/internal/api/Presence;->$values()[Lcom/sightcall/universal/internal/api/Presence;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/api/Presence;->$VALUES:[Lcom/sightcall/universal/internal/api/Presence;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/api/Presence;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/api/Presence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/api/Presence;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/api/Presence;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/api/Presence;->$VALUES:[Lcom/sightcall/universal/internal/api/Presence;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/api/Presence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/api/Presence;

    return-object v0
.end method
