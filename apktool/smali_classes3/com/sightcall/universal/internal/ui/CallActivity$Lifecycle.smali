.class final enum Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lifecycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

.field public static final enum ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

.field public static final enum DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    sget-object v1, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->ASCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    const-string v1, "DESCENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->DESCENDING:Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->$values()[Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->$VALUES:[Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->$VALUES:[Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/ui/CallActivity$Lifecycle;

    return-object v0
.end method
