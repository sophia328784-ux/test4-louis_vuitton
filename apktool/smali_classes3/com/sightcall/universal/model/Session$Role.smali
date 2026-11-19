.class public final enum Lcom/sightcall/universal/model/Session$Role;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/model/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/model/Session$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/model/Session$Role;

.field public static final enum ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

.field public static final enum GUEST:Lcom/sightcall/universal/model/Session$Role;

.field public static final enum HOST:Lcom/sightcall/universal/model/Session$Role;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/model/Session$Role;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/model/Session$Role;

    const-string v1, "HOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/model/Session$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    new-instance v0, Lcom/sightcall/universal/model/Session$Role;

    const-string v1, "GUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/model/Session$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    new-instance v0, Lcom/sightcall/universal/model/Session$Role;

    const-string v1, "ATTENDEE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/model/Session$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    invoke-static {}, Lcom/sightcall/universal/model/Session$Role;->$values()[Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/model/Session$Role;->$VALUES:[Lcom/sightcall/universal/model/Session$Role;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/model/Session$Role;
    .locals 1

    const-class v0, Lcom/sightcall/universal/model/Session$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/model/Session$Role;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/model/Session$Role;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->$VALUES:[Lcom/sightcall/universal/model/Session$Role;

    invoke-virtual {v0}, [Lcom/sightcall/universal/model/Session$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/model/Session$Role;

    return-object v0
.end method
