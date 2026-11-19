.class public abstract enum Lcom/sightcall/universal/ar/ArUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/ar/ArUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/ar/ArUnit;

.field public static final enum IMPERIAL:Lcom/sightcall/universal/ar/ArUnit;

.field public static final enum METRIC:Lcom/sightcall/universal/ar/ArUnit;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/ar/ArUnit;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/ar/ArUnit;->METRIC:Lcom/sightcall/universal/ar/ArUnit;

    sget-object v1, Lcom/sightcall/universal/ar/ArUnit;->IMPERIAL:Lcom/sightcall/universal/ar/ArUnit;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/ar/ArUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/ar/ArUnit$1;

    invoke-direct {v0}, Lcom/sightcall/universal/ar/ArUnit$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/ar/ArUnit;->METRIC:Lcom/sightcall/universal/ar/ArUnit;

    new-instance v0, Lcom/sightcall/universal/ar/ArUnit$2;

    invoke-direct {v0}, Lcom/sightcall/universal/ar/ArUnit$2;-><init>()V

    sput-object v0, Lcom/sightcall/universal/ar/ArUnit;->IMPERIAL:Lcom/sightcall/universal/ar/ArUnit;

    invoke-static {}, Lcom/sightcall/universal/ar/ArUnit;->$values()[Lcom/sightcall/universal/ar/ArUnit;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/ar/ArUnit;->$VALUES:[Lcom/sightcall/universal/ar/ArUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/ar/ArUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/ar/ArUnit;
    .locals 1

    const-class v0, Lcom/sightcall/universal/ar/ArUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/ar/ArUnit;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/ar/ArUnit;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/ar/ArUnit;->$VALUES:[Lcom/sightcall/universal/ar/ArUnit;

    invoke-virtual {v0}, [Lcom/sightcall/universal/ar/ArUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/ar/ArUnit;

    return-object v0
.end method


# virtual methods
.method public abstract format(Ljava/util/Locale;D)Ljava/lang/String;
.end method
