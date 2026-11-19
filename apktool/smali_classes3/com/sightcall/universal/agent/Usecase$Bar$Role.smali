.class public final enum Lcom/sightcall/universal/agent/Usecase$Bar$Role;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase$Bar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$Bar$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$Bar$Role;

.field public static final enum ATTENDEE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attendee"
    .end annotation
.end field

.field public static final enum GUEST:Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "guest"
    .end annotation
.end field

.field public static final enum LOCAL:Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "local"
    .end annotation
.end field

.field public static final enum MOBILE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "mobile"
    .end annotation
.end field

.field public static final enum REMOTE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "remote"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .locals 5

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->GUEST:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->MOBILE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->LOCAL:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    sget-object v3, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->REMOTE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    sget-object v4, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->ATTENDEE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    const-string v1, "GUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Bar$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->GUEST:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    const-string v1, "MOBILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Bar$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->MOBILE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    const-string v1, "LOCAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Bar$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->LOCAL:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    const-string v1, "REMOTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Bar$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->REMOTE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    const-string v1, "ATTENDEE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Bar$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->ATTENDEE:Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->$values()[Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$Bar$Role;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$Bar$Role;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Bar$Role;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$Bar$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$Bar$Role;

    return-object v0
.end method
