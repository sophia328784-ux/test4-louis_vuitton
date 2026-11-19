.class public final enum Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultMedia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$DefaultMedia;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

.field public static final enum CODE:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "code"
    .end annotation
.end field

.field public static final enum EMAIL:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "email"
    .end annotation
.end field

.field public static final enum SMS:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "sms"
    .end annotation
.end field

.field public static final enum URL:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "url"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .locals 4

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->CODE:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->SMS:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->EMAIL:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    sget-object v3, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->URL:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    const-string v1, "CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->CODE:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    const-string v1, "SMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->SMS:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    const-string v1, "EMAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->EMAIL:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    const-string v1, "URL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->URL:Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->$values()[Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$DefaultMedia;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$DefaultMedia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$DefaultMedia;

    return-object v0
.end method
