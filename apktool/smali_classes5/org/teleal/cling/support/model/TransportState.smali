.class public final enum Lorg/teleal/cling/support/model/TransportState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/model/TransportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/model/TransportState;

.field public static final enum CUSTOM:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum PAUSED_RECORDING:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum PLAYING:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum RECORDING:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum STOPPED:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum TRANSITIONING:Lorg/teleal/cling/support/model/TransportState;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    new-instance v1, Lorg/teleal/cling/support/model/TransportState;

    const-string v2, "PLAYING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/teleal/cling/support/model/TransportState;->PLAYING:Lorg/teleal/cling/support/model/TransportState;

    new-instance v2, Lorg/teleal/cling/support/model/TransportState;

    const-string v3, "TRANSITIONING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/teleal/cling/support/model/TransportState;->TRANSITIONING:Lorg/teleal/cling/support/model/TransportState;

    new-instance v3, Lorg/teleal/cling/support/model/TransportState;

    const-string v4, "PAUSED_PLAYBACK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/teleal/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

    new-instance v4, Lorg/teleal/cling/support/model/TransportState;

    const-string v5, "PAUSED_RECORDING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/teleal/cling/support/model/TransportState;->PAUSED_RECORDING:Lorg/teleal/cling/support/model/TransportState;

    new-instance v5, Lorg/teleal/cling/support/model/TransportState;

    const-string v6, "RECORDING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/teleal/cling/support/model/TransportState;->RECORDING:Lorg/teleal/cling/support/model/TransportState;

    new-instance v6, Lorg/teleal/cling/support/model/TransportState;

    const-string v7, "NO_MEDIA_PRESENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    new-instance v7, Lorg/teleal/cling/support/model/TransportState;

    const-string v8, "CUSTOM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/teleal/cling/support/model/TransportState;->CUSTOM:Lorg/teleal/cling/support/model/TransportState;

    filled-new-array/range {v0 .. v7}, [Lorg/teleal/cling/support/model/TransportState;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->$VALUES:[Lorg/teleal/cling/support/model/TransportState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/model/TransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/TransportState;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/model/TransportState;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->$VALUES:[Lorg/teleal/cling/support/model/TransportState;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/model/TransportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/TransportState;

    return-object v0
.end method
