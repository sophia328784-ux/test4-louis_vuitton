.class public final enum Lorg/teleal/cling/support/model/SeekMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/model/SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum ABS_COUNT:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum ABS_TIME:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum CHANNEL_FREQ:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum FRAME:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum REL_COUNT:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum REL_TIME:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum TAPE_INDEX:Lorg/teleal/cling/support/model/SeekMode;

.field public static final enum TRACK_NR:Lorg/teleal/cling/support/model/SeekMode;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/teleal/cling/support/model/SeekMode;

    const-string v1, "TRACK_NR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/SeekMode;->TRACK_NR:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v1, Lorg/teleal/cling/support/model/SeekMode;

    const-string v2, "ABS_TIME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/SeekMode;->ABS_TIME:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v2, Lorg/teleal/cling/support/model/SeekMode;

    const-string v3, "REL_TIME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/model/SeekMode;->REL_TIME:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v3, Lorg/teleal/cling/support/model/SeekMode;

    const-string v4, "ABS_COUNT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/support/model/SeekMode;->ABS_COUNT:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v4, Lorg/teleal/cling/support/model/SeekMode;

    const-string v5, "REL_COUNT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/support/model/SeekMode;->REL_COUNT:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v5, Lorg/teleal/cling/support/model/SeekMode;

    const-string v6, "CHANNEL_FREQ"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/support/model/SeekMode;->CHANNEL_FREQ:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v6, Lorg/teleal/cling/support/model/SeekMode;

    const/4 v7, 0x6

    const-string v8, "TAPE-INDEX"

    const-string v9, "TAPE_INDEX"

    invoke-direct {v6, v9, v7, v8}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/support/model/SeekMode;->TAPE_INDEX:Lorg/teleal/cling/support/model/SeekMode;

    new-instance v7, Lorg/teleal/cling/support/model/SeekMode;

    const-string v8, "FRAME"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v8}, Lorg/teleal/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/teleal/cling/support/model/SeekMode;->FRAME:Lorg/teleal/cling/support/model/SeekMode;

    filled-new-array/range {v0 .. v7}, [Lorg/teleal/cling/support/model/SeekMode;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/model/SeekMode;->$VALUES:[Lorg/teleal/cling/support/model/SeekMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/SeekMode;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/model/SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/SeekMode;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/model/SeekMode;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/SeekMode;->$VALUES:[Lorg/teleal/cling/support/model/SeekMode;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/model/SeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/SeekMode;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    return-object p0
.end method
