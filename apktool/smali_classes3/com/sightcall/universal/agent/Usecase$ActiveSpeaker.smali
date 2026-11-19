.class public final enum Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActiveSpeaker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

.field public static final enum GUEST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest"
    .end annotation
.end field

.field public static final enum HOST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "host"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->HOST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->GUEST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    const-string v1, "HOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->HOST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    const-string v1, "GUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->GUEST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->$values()[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    return-object v0
.end method
