.class public final enum Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/location/LocationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationDialogResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

.field public static final enum ACCEPTED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

.field public static final enum DECLINED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

.field public static final enum TIMEOUT:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->ACCEPTED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    sget-object v1, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->DECLINED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    sget-object v2, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->TIMEOUT:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->ACCEPTED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    new-instance v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    const-string v1, "DECLINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->DECLINED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    new-instance v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->TIMEOUT:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    invoke-static {}, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->$values()[Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->$VALUES:[Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->$VALUES:[Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    return-object v0
.end method
