.class public final enum Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

.field public static final enum c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

.field public static final enum d:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

.field public static final enum e:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

.field private static final synthetic f:[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    const-string v1, "Once"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    const-string v1, "EveryDay"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    const-string v1, "EveryWeek"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->d:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    const-string v1, "EveryMonth"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->e:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-static {}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->a()[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    move-result-object v0

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->f:[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;
    .locals 4

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    sget-object v1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    sget-object v2, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->d:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    sget-object v3, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->e:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;
    .locals 1

    const-class v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    return-object p0
.end method

.method public static values()[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;
    .locals 1

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->f:[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-virtual {v0}, [Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->a:Ljava/lang/String;

    return-object p0
.end method
