.class public final enum Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase$SavePicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

.field public static final enum JPG:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "jpg"
    .end annotation
.end field

.field public static final enum PNG:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "png"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->PNG:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->JPG:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    const-string v1, "PNG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->PNG:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    const-string v1, "JPG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->JPG:Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->$values()[Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    return-object v0
.end method
