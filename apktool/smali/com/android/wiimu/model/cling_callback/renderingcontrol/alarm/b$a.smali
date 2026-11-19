.class public final enum Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

.field public static final enum c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

.field private static final synthetic d:[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "Enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "Disable"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    invoke-static {}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->a()[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    move-result-object v0

    sput-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->d:[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

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

    iput-object p3, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;
    .locals 2

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    sget-object v1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    filled-new-array {v0, v1}, [Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;
    .locals 1

    const-class v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    return-object p0
.end method

.method public static values()[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;
    .locals 1

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->d:[Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    invoke-virtual {v0}, [Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->a:Ljava/lang/String;

    return-object p0
.end method
