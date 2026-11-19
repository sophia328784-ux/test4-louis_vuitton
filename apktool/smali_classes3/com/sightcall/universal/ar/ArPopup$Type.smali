.class public final enum Lcom/sightcall/universal/ar/ArPopup$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/ar/ArPopup$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/ar/ArPopup$Type;

.field public static final enum CANCEL:Lcom/sightcall/universal/ar/ArPopup$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "cancel"
    .end annotation
.end field

.field public static final enum INSTALL:Lcom/sightcall/universal/ar/ArPopup$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "install"
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/sightcall/universal/ar/ArPopup$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "success"
    .end annotation
.end field

.field public static final enum UPDATE:Lcom/sightcall/universal/ar/ArPopup$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "update"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/ar/ArPopup$Type;
    .locals 4

    sget-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->INSTALL:Lcom/sightcall/universal/ar/ArPopup$Type;

    sget-object v1, Lcom/sightcall/universal/ar/ArPopup$Type;->UPDATE:Lcom/sightcall/universal/ar/ArPopup$Type;

    sget-object v2, Lcom/sightcall/universal/ar/ArPopup$Type;->SUCCESS:Lcom/sightcall/universal/ar/ArPopup$Type;

    sget-object v3, Lcom/sightcall/universal/ar/ArPopup$Type;->CANCEL:Lcom/sightcall/universal/ar/ArPopup$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sightcall/universal/ar/ArPopup$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup$Type;

    const-string v1, "INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->INSTALL:Lcom/sightcall/universal/ar/ArPopup$Type;

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup$Type;

    const-string v1, "UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->UPDATE:Lcom/sightcall/universal/ar/ArPopup$Type;

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup$Type;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->SUCCESS:Lcom/sightcall/universal/ar/ArPopup$Type;

    new-instance v0, Lcom/sightcall/universal/ar/ArPopup$Type;

    const-string v1, "CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/ar/ArPopup$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->CANCEL:Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-static {}, Lcom/sightcall/universal/ar/ArPopup$Type;->$values()[Lcom/sightcall/universal/ar/ArPopup$Type;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->$VALUES:[Lcom/sightcall/universal/ar/ArPopup$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/ar/ArPopup$Type;
    .locals 1

    const-class v0, Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/ar/ArPopup$Type;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/ar/ArPopup$Type;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/ar/ArPopup$Type;->$VALUES:[Lcom/sightcall/universal/ar/ArPopup$Type;

    invoke-virtual {v0}, [Lcom/sightcall/universal/ar/ArPopup$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/ar/ArPopup$Type;

    return-object v0
.end method
