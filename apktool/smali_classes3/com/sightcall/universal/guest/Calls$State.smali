.class public final enum Lcom/sightcall/universal/guest/Calls$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/Calls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/guest/Calls$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/guest/Calls$State;

.field public static final enum CONNECTED:Lcom/sightcall/universal/guest/Calls$State;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "connected"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/guest/Calls$State;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/guest/Calls$State;->CONNECTED:Lcom/sightcall/universal/guest/Calls$State;

    filled-new-array {v0}, [Lcom/sightcall/universal/guest/Calls$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/guest/Calls$State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/guest/Calls$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/guest/Calls$State;->CONNECTED:Lcom/sightcall/universal/guest/Calls$State;

    invoke-static {}, Lcom/sightcall/universal/guest/Calls$State;->$values()[Lcom/sightcall/universal/guest/Calls$State;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/guest/Calls$State;->$VALUES:[Lcom/sightcall/universal/guest/Calls$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/guest/Calls$State;
    .locals 1

    const-class v0, Lcom/sightcall/universal/guest/Calls$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/guest/Calls$State;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/guest/Calls$State;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/guest/Calls$State;->$VALUES:[Lcom/sightcall/universal/guest/Calls$State;

    invoke-virtual {v0}, [Lcom/sightcall/universal/guest/Calls$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/guest/Calls$State;

    return-object v0
.end method
