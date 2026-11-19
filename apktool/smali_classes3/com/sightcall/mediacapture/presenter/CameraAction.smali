.class public final enum Lcom/sightcall/mediacapture/presenter/CameraAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/mediacapture/presenter/CameraAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/CameraAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "TAKE_PHOTO",
        "RECORD_VIDEO",
        "STOP_RECORDING",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/sightcall/mediacapture/presenter/CameraAction;

.field public static final enum RECORD_VIDEO:Lcom/sightcall/mediacapture/presenter/CameraAction;

.field public static final enum STOP_RECORDING:Lcom/sightcall/mediacapture/presenter/CameraAction;

.field public static final enum TAKE_PHOTO:Lcom/sightcall/mediacapture/presenter/CameraAction;


# direct methods
.method private static final synthetic $values()[Lcom/sightcall/mediacapture/presenter/CameraAction;
    .locals 3

    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->TAKE_PHOTO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    sget-object v1, Lcom/sightcall/mediacapture/presenter/CameraAction;->RECORD_VIDEO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    sget-object v2, Lcom/sightcall/mediacapture/presenter/CameraAction;->STOP_RECORDING:Lcom/sightcall/mediacapture/presenter/CameraAction;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/mediacapture/presenter/CameraAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/mediacapture/presenter/CameraAction;

    const-string v1, "TAKE_PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/mediacapture/presenter/CameraAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->TAKE_PHOTO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/CameraAction;

    const-string v1, "RECORD_VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/mediacapture/presenter/CameraAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->RECORD_VIDEO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/CameraAction;

    const-string v1, "STOP_RECORDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/mediacapture/presenter/CameraAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->STOP_RECORDING:Lcom/sightcall/mediacapture/presenter/CameraAction;

    invoke-static {}, Lcom/sightcall/mediacapture/presenter/CameraAction;->$values()[Lcom/sightcall/mediacapture/presenter/CameraAction;

    move-result-object v0

    sput-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->$VALUES:[Lcom/sightcall/mediacapture/presenter/CameraAction;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/sightcall/mediacapture/presenter/CameraAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/mediacapture/presenter/CameraAction;
    .locals 1

    const-class v0, Lcom/sightcall/mediacapture/presenter/CameraAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/CameraAction;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/mediacapture/presenter/CameraAction;
    .locals 1

    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->$VALUES:[Lcom/sightcall/mediacapture/presenter/CameraAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/mediacapture/presenter/CameraAction;

    return-object v0
.end method
